package com.twitter.library.media.manager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.k;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.network.a;
import com.twitter.media.request.ResourceRequestType;
import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;
import com.twitter.media.request.i;
import com.twitter.util.aa;
import com.twitter.util.al;
import com.twitter.util.ao;
import com.twitter.util.c;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.concurrent.l;
import com.twitter.util.h;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.z;
import cus;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
public class v<REQ extends g, RES, RESP extends ResourceResponse<REQ, RES>> extends Handler {
    private final Context a;
    private final Handler b;
    private final WeakReference<t<REQ, RES, RESP>> c;
    private final AtomicBoolean d;
    private final Map<String, ac<REQ, RESP>> e;
    private final Map<String, ac<REQ, RESP>> f;
    private final Map<String, ad> g;

    public v(Context context, Looper looper, t<REQ, RES, RESP> tVar) {
        super(looper);
        this.b = new Handler(Looper.getMainLooper());
        this.d = new AtomicBoolean();
        this.e = new HashMap(20);
        this.f = new HashMap(20);
        this.g = new LinkedHashMap(20);
        this.a = context;
        this.c = new WeakReference(tVar);
    }

    public j<RESP> a(REQ req) {
        t tVar = (t) this.c.get();
        if (this.d.get() || tVar == null) {
            return ObservablePromise.b();
        }
        Object g = tVar.g(req);
        if (req.v() && g == null && !req.y()) {
            ag agVar = new ag(req);
            j<RESP> xVar = new x(this, agVar);
            agVar.b = xVar;
            obtainMessage(1, agVar).sendToTarget();
            return xVar;
        }
        ResourceSource resourceSource = g != null ? ResourceSource.b : ResourceSource.a;
        ResourceResponse a = tVar.a(req, g, resourceSource);
        i E = req.E();
        ObservablePromise a2 = ObservablePromise.a(a);
        tVar.a(resourceSource);
        if (E != null) {
            if (c.a()) {
                E.a(a);
            } else {
                this.b.post(new w(this, E, a));
            }
        }
        return a2;
    }

    public Future<?> a() {
        if (!this.d.compareAndSet(false, true)) {
            return l.d();
        }
        l lVar = new l();
        obtainMessage(5, lVar).sendToTarget();
        return lVar;
    }

    public void handleMessage(Message message) {
        h.a(getLooper());
        ag agVar;
        ac acVar;
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                agVar = (ag) ObjectUtils.a(message.obj);
                t tVar = (t) this.c.get();
                if (tVar != null) {
                    g gVar = agVar.a;
                    Object g = tVar.g(gVar);
                    if (g != null) {
                        agVar.c = ResourceSource.b;
                        aa aaVar = new aa();
                        z x = gVar.x();
                        if (x != null) {
                            aaVar.a(x);
                        }
                        b(new ac(agVar, aaVar), g);
                    } else if (tVar.d(gVar) != null) {
                        a(agVar, true);
                    } else {
                        a(agVar);
                    }
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                af afVar = (af) ObjectUtils.a(message.obj);
                acVar = (ac) this.f.remove(afVar.a);
                if (acVar == null) {
                    return;
                }
                if (afVar.c == null && afVar.d) {
                    for (ag agVar2 : acVar.a) {
                        a(agVar2);
                    }
                    return;
                }
                acVar.a(afVar.b);
                a(acVar, afVar.c);
            case Util.TYPE_OTHER /*3*/:
                ae aeVar = (ae) message.obj;
                String str = aeVar.a;
                k kVar = aeVar.b;
                ac acVar2 = (ac) this.e.remove(str);
                if (acVar2 == null) {
                    return;
                }
                if (kVar == null || kVar.a != Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                    a(acVar2, str, kVar);
                    return;
                }
                acVar2.a(ResourceSource.f);
                for (ag agVar22 : acVar2.a) {
                    a(agVar22, false);
                }
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                b((ag) ObjectUtils.a(message.obj));
            case EbmlReader.TYPE_FLOAT /*5*/:
                l lVar = (l) message.obj;
                for (ac acVar3 : this.f.values()) {
                    acVar3.c();
                }
                this.f.clear();
                for (ac acVar32 : this.e.values()) {
                    acVar32.c();
                }
                this.e.clear();
                lVar.set(null);
            default:
                throw new IllegalArgumentException("Unknown message!");
        }
    }

    private void a(ag<REQ, RESP> agVar, boolean z) {
        h.a(getLooper());
        g gVar = agVar.a;
        t tVar = (t) this.c.get();
        if (tVar != null) {
            String a = tVar.a(gVar);
            ac acVar = (ac) this.f.remove(a);
            if (acVar == null) {
                Future yVar = new y(this, tVar, gVar, a, z);
                az.a(this.a).a(yVar);
                acVar = new ac(yVar, new aa());
            }
            acVar.a((ag) agVar);
            if (acVar.a()) {
                this.f.put(a, acVar);
            } else {
                a(acVar, null);
            }
        }
    }

    private void a(ag<REQ, RESP> agVar) {
        k kVar = null;
        h.a(getLooper());
        g gVar = agVar.a;
        t tVar = (t) this.c.get();
        if (tVar != null) {
            ac acVar;
            String e = tVar.e(gVar);
            String a = a(e, gVar);
            ac acVar2 = (ac) this.e.remove(a);
            if (acVar2 == null) {
                Future a2;
                b();
                o oVar = new o("fetch_blocking");
                o oVar2 = new o("fetch_runtime");
                aa aaVar = new aa();
                if (!this.g.containsKey(a) && gVar.z() && ao.b(gVar.a())) {
                    oVar.i();
                    Session c = bg.a().c();
                    cus cus = tVar.c;
                    ResourceRequestType B = gVar.B();
                    a2 = new r(this.a, e).a(c).a((a) gVar.w()).a(B).a(gVar.D()).a((z) aaVar).a(new aa(this, cus, e)).a(new z(this, oVar, oVar2, B, cus, e, a, tVar, gVar)).a();
                    az.a(this.a).a(a2, null);
                } else {
                    a2 = null;
                }
                acVar = new ac(a2, aaVar);
            } else {
                acVar = acVar2;
            }
            acVar.a((ag) agVar);
            z x = gVar.x();
            if (x != null) {
                acVar.b.a(x);
            }
            if (acVar.a()) {
                this.e.put(a, acVar);
                return;
            }
            ad adVar = (ad) this.g.get(a);
            if (adVar != null) {
                kVar = adVar.b;
            }
            a(acVar, a, kVar);
        }
    }

    private void b() {
        h.a(getLooper());
        long b = al.b();
        Iterator it = this.g.entrySet().iterator();
        while (it.hasNext() && ((ad) ((Entry) it.next()).getValue()).a < b) {
            it.remove();
        }
    }

    private void b(ag<REQ, RESP> agVar) {
        h.a(getLooper());
        t tVar = (t) this.c.get();
        if (tVar != null) {
            String a = a(tVar.e(agVar.a), agVar.a);
            ac acVar = (ac) this.e.get(a);
            if (acVar == null || !acVar.b(agVar)) {
                String a2 = tVar.a(agVar.a);
                ac acVar2 = (ac) this.f.get(a2);
                if (acVar2 != null && acVar2.b(agVar) && !acVar2.a()) {
                    this.f.remove(a2);
                }
            } else if (!acVar.a()) {
                this.e.remove(a);
            }
        }
    }

    private void a(ac<REQ, RESP> acVar, String str, k kVar) {
        h.a(getLooper());
        if (!(kVar == null || kVar.a == 0 || this.g.containsKey(str))) {
            this.g.put(str, new ad(al.b() + HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS, kVar));
        }
        b(acVar, null);
    }

    private void a(ac<REQ, RESP> acVar, RES res) {
        h.a(getLooper());
        if (res != null) {
            int i;
            for (ag agVar : acVar.a) {
                if (!agVar.a.A()) {
                    i = 1;
                    break;
                }
            }
            i = 0;
            t tVar = (t) this.c.get();
            if (!(tVar == null || r1 == 0)) {
                tVar.a(((ag) acVar.a.get(0)).a, res);
            }
        }
        b(acVar, res);
    }

    private void b(ac<REQ, RESP> acVar, RES res) {
        h.a(getLooper());
        a((ac) acVar);
        t tVar = (t) this.c.get();
        if (tVar != null) {
            for (ag agVar : acVar.a) {
                tVar.a(agVar.c);
            }
        }
        this.b.post(new ab(this, tVar, acVar, res));
    }

    private void a(ac<REQ, RESP> acVar) {
        h.a(getLooper());
        for (ag agVar : acVar.a) {
            o oVar = agVar.d;
            oVar.j();
            oVar.f();
        }
    }

    private static String a(String str, g gVar) {
        return str + gVar.B();
    }
}
