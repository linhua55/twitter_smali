package com.twitter.library.media.manager;

import android.content.Context;
import android.net.Uri;
import android.os.HandlerThread;
import android.util.Pair;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.k;
import com.twitter.library.client.az;
import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;
import com.twitter.util.ao;
import com.twitter.util.collection.m;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import cus;
import defpackage.arf;
import defpackage.ark;
import defpackage.aru;
import defpackage.bbl;
import defpackage.bbn;
import java.io.Closeable;
import java.io.File;
import java.io.OutputStream;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public abstract class t<REQ extends g, RES, RESP extends ResourceResponse<REQ, RES>> implements Closeable {
    protected final Context a;
    protected final m<String, RES> b;
    protected final cus c;
    protected final cus d;
    protected final HandlerThread e;
    protected v<REQ, RES, RESP> f;
    private final Map<ResourceSource, arf> g;

    protected abstract RESP a(REQ req, RES res, ResourceSource resourceSource);

    protected abstract boolean a(RES res);

    t(String str, Context context, HandlerThread handlerThread, m<String, RES> mVar, cus cus, cus cus2) {
        this.a = context.getApplicationContext();
        this.b = mVar;
        this.c = cus;
        this.d = cus2;
        this.e = handlerThread;
        ResourceSource[] values = ResourceSource.values();
        this.g = new HashMap(values.length);
        aru b = aru.b();
        for (ResourceSource resourceSource : values) {
            arf a = arf.a("media:fetcher:source:" + str + ":" + resourceSource.name().toLowerCase(), b, 0, ark.n, 3);
            a.i();
            this.g.put(resourceSource, a);
        }
    }

    public void close() {
        if (this.f != null) {
            this.f.a();
        }
        this.c.close();
        if (this.d != null) {
            this.d.close();
        }
    }

    public m<String, RES> a() {
        return this.b;
    }

    public RES g(REQ req) {
        if (req.v()) {
            return a(req.u());
        }
        return null;
    }

    protected RES a(String str) {
        if (this.b != null) {
            Object a = this.b.a(str);
            if (a != null) {
                if (a(a)) {
                    return a;
                }
                this.b.b(str);
                bbn.a(new bbl().a("Resource Request Key", str).a(new IllegalStateException("Cached resource was unexpectedly invalidated by external code. For bitmaps, do not call Bitmap.recycle() on images returned by MediaManager.")));
            }
        }
        return null;
    }

    public j<RESP> f(REQ req) {
        if (req != null) {
            return b().a(req);
        }
        return ObservablePromise.a(null);
    }

    public void b(String str) {
        if (this.b != null) {
            for (String str2 : this.b.b()) {
                if (str2.startsWith(str)) {
                    this.b.b(str2);
                }
            }
        }
    }

    public Future<?> a(Collection<String> collection) {
        if (collection == null) {
            return null;
        }
        AsyncOperation ahVar = new ah(this, collection);
        az.a(this.a).a(ahVar);
        return ahVar;
    }

    protected RES b(REQ req, File file) {
        com.twitter.util.j.c();
        return a((g) req, file);
    }

    protected RES a(REQ req, File file) {
        return null;
    }

    protected boolean a(REQ req, RES res, OutputStream outputStream) {
        return false;
    }

    RES a(REQ req, RES res) {
        if (this.b == null || res == null) {
            return null;
        }
        return this.b.a(a((g) req), res);
    }

    public void a(String str, File file) {
        com.twitter.util.j.c();
        try {
            this.c.a(str, file);
        } catch (Throwable e) {
            bbn.a(e);
        }
    }

    protected String e(REQ req) {
        return req.a();
    }

    Pair<ResourceSource, File> d(REQ req) {
        com.twitter.util.j.c();
        File b = b((g) req);
        if (b != null) {
            return Pair.create(ResourceSource.c, b);
        }
        b = c(req);
        if (b != null) {
            return Pair.create(ResourceSource.d, b);
        }
        b = req.a(this.a);
        if (b != null) {
            return Pair.create(ResourceSource.e, b);
        }
        if (ao.d(req.a())) {
            b = ao.c(this.a, Uri.parse(req.a()));
            if (b != null) {
                return Pair.create(ResourceSource.e, b);
            }
        }
        return null;
    }

    void h(REQ req) {
        com.twitter.util.j.c();
        if (this.d != null) {
            this.d.d(req.u());
        }
        if (this.b != null) {
            this.b.b(req.u());
        }
        if (this.c != null) {
            this.c.d(req.a());
        }
    }

    public File c(REQ req) {
        com.twitter.util.j.c();
        return this.c.a(req.a());
    }

    public File b(REQ req) {
        com.twitter.util.j.c();
        return this.d != null ? this.d.a(req.u()) : null;
    }

    boolean b(REQ req, RES res) {
        com.twitter.util.j.c();
        if (this.d != null) {
            try {
                return this.d.a(a((g) req), res, new u(this, req));
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return false;
    }

    protected synchronized v<REQ, RES, RESP> b() {
        if (this.f == null) {
            this.f = new v(this.a, this.e.getLooper(), this);
        }
        return this.f;
    }

    void a(ResourceSource resourceSource) {
        ((arf) this.g.get(resourceSource)).f();
    }

    protected void a(REQ req, String str, k kVar) {
    }

    protected String a(REQ req) {
        return req.u();
    }
}
