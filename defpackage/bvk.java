package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import ark;
import aru;
import asp;
import bbn;
import bbu;
import cfb;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.app.common.util.f;
import com.twitter.config.AppConfig;
import com.twitter.config.b;
import com.twitter.config.g;
import com.twitter.config.h;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.scribe.ScribeService;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import cpa;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: Twttr */
/* renamed from: bvk */
class bvk implements g {
    private static String b;
    public boolean a;
    private final Map<Long, ciz> c;
    private int d;
    private boolean e;
    private final ArrayList<asp> f;
    private civ g;
    private final Context h;
    private final Handler i;
    private boolean j;
    private final Runnable k;
    private long l;
    private final String m;
    private h n;

    public synchronized String a() {
        if (b == null) {
            b = b().d;
        }
        return b;
    }

    bvk(Context context) {
        this.c = new ConcurrentHashMap();
        this.d = -1;
        this.f = new ArrayList();
        this.j = false;
        this.k = new bvl(this);
        this.i = new Handler(Looper.getMainLooper());
        this.h = context.getApplicationContext();
        this.m = an.b(this.h) ? "release_feature_switch_manifest" : "feature_switch_manifest";
        f.a().a(new bvm(this));
    }

    public void a(String str, int i, String str2, long j) {
        if (!str2.equals("unassigned")) {
            ScribeService.a(this.h, str, i, str2, j);
        }
    }

    public Object a(long j, String str, long j2) {
        ciz ciz = (ciz) this.c.get(Long.valueOf(j));
        boolean z = j2 != -1;
        if (ciz == null && bg.a().b(j).g() == j) {
            a(j, false);
            ciz = (ciz) this.c.get(Long.valueOf(j));
        }
        cil b = ciz.b(str);
        if (b != null) {
            return a(j2, str, b, z);
        }
        civ b2 = b();
        if (!b2.e.containsKey(str)) {
            return b2.a(str);
        }
        if (ciz.e.contains(str)) {
            return "unassigned";
        }
        return a(j2, str, b2.b(str), z);
    }

    public Object a(long j, String str) {
        return a(j, str, -1);
    }

    private Object a(long j, String str, cil cil, boolean z) {
        if (str == null || cil == null) {
            return null;
        }
        if (z && cil.b()) {
            cin c = cil.c();
            a(str, c.b(), c.c(), j);
        }
        return cil.a();
    }

    public boolean a(long j) {
        return this.c.containsKey(Long.valueOf(j)) && !((ciz) this.c.get(Long.valueOf(j))).equals(ciz.c);
    }

    public synchronized void b(long j) {
        this.l = j;
        this.a = false;
        a(j, false);
    }

    public synchronized civ b() {
        return a(false, this.m);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized defpackage.civ a(boolean r4, java.lang.String r5) {
        /*
        r3 = this;
        monitor-enter(r3);
        if (r4 != 0) goto L_0x0007;
    L_0x0003:
        r0 = r3.g;	 Catch:{ all -> 0x0030 }
        if (r0 != 0) goto L_0x002c;
    L_0x0007:
        r0 = new ark;	 Catch:{ all -> 0x0030 }
        r1 = "fs:load:embedded_manifest";
        r2 = ark.m;	 Catch:{ all -> 0x0030 }
        r0.<init>(r1, r2);	 Catch:{ all -> 0x0030 }
        r1 = "Local_FCP";
        r0.b(r1);	 Catch:{ all -> 0x0030 }
        r0.i();	 Catch:{ all -> 0x0030 }
        r1 = r3.h;	 Catch:{ all -> 0x0030 }
        r1 = defpackage.asq.a(r1, r5);	 Catch:{ all -> 0x0030 }
        r3.g = r1;	 Catch:{ all -> 0x0030 }
        r0.j();	 Catch:{ all -> 0x0030 }
        r1 = aru.b();	 Catch:{ all -> 0x0030 }
        r1.a(r0);	 Catch:{ all -> 0x0030 }
    L_0x002c:
        r0 = r3.g;	 Catch:{ all -> 0x0030 }
        monitor-exit(r3);
        return r0;
    L_0x0030:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: bvk.a(boolean, java.lang.String):civ");
    }

    public synchronized void a(long j, civ civ, ciz ciz) {
        ciz ciz2 = (ciz) this.c.get(Long.valueOf(j));
        if (j != this.l) {
            c(j);
        } else if (ciz2 != null) {
            this.a = bvk.a(civ, ciz2, ciz) | this.a;
            a(j, ciz);
        }
    }

    private static String a(civ civ, ciz ciz, String str) {
        String str2 = (String) ciz.a(str);
        if (str2 != null) {
            return str2;
        }
        if (ciz.e.contains(str)) {
            return "unassigned";
        }
        str2 = (String) civ.a(str);
        return str2 == null ? "unassigned" : str2;
    }

    private static cil b(civ civ, ciz ciz, String str) {
        cil b = ciz.b(str);
        return b == null ? civ.b(str) : b;
    }

    public static boolean a(civ civ, ciz ciz, ciz ciz2) {
        Iterable a;
        if (ciz.equals(ciz.c)) {
            a = civ.c.a(ciz2.d);
        } else {
            a = ciz.d.a(ciz2.d);
        }
        for (String str : (List) n.d().c(r0).c(civ.e.keySet()).q()) {
            if (civ.f.contains(str)) {
                if (!civ.e.containsKey(str)) {
                    cil b = bvk.b(civ, ciz, str);
                    cil b2 = bvk.b(civ, ciz2, str);
                    if ((b == null && b2 != null) || !(b == null || b.equals(b2))) {
                        return true;
                    }
                } else if (!bvk.a(civ, ciz, str).equals(bvk.a(civ, ciz2, str))) {
                    return true;
                }
            }
        }
        return false;
    }

    public synchronized void c(long j) {
        if (j != this.l) {
            a(j, false);
            bvo.a(this.h, j, a(), this.e);
        } else {
            a("loadFeatureSwitchesForNonActiveUser should not be called for a current user", new Exception());
        }
    }

    private static void a(long j, String str, String str2) {
        bbu.a(new TwitterScribeLog(j).c(str, str2).b(new String[]{"fs:settings:version:changed"}));
    }

    synchronized void a(long j, boolean z) {
        if (!this.c.containsKey(Long.valueOf(j)) || z) {
            try {
                ciz a = asr.a(asr.a(this.h, j), aru.b());
                a(j, a);
                if (a == null) {
                    asr.b(j);
                }
            } catch (Exception e) {
                this.c.put(Long.valueOf(j), ciz.c);
                a("Failed to read feature switch from the file.", e);
            }
        }
    }

    private ciz a(ciz ciz, ciz ciz2) {
        r b = r.d().b(ciz2.d.c);
        civ b2 = b();
        for (String str : b2.f) {
            b.b(str, bvk.b(b2, ciz, str));
        }
        return (ciz) new cjb().a(ciz2.e).a((ciq) new cis(ciz2.d).a((Map) b.q()).q()).q();
    }

    private synchronized void a(long j, ciz ciz) {
        try {
            ark ark = new ark("fs:load:feature_switches", ark.m);
            ark.b("Server_FCP");
            ark.i();
            ciz ciz2 = (ciz) this.c.get(Long.valueOf(j));
            if (ciz == null || ciz.a() <= AppConfig.m().f()) {
                this.c.put(Long.valueOf(j), ciz.c);
                civ b = b();
                if (!(ciz2 == null || ciz2.d.b(b.c))) {
                    bvk.a(j, b.c.e, b.c.d);
                }
            } else {
                if (ciz2 != null) {
                    ciz = a(ciz2, ciz);
                    if (!ciz2.d.b(ciz.d)) {
                        bvk.a(j, ciz.d.e, ciz.d.d);
                    }
                }
                this.c.put(Long.valueOf(j), ciz);
            }
            for (int size = this.f.size() - 1; size >= 0; size--) {
                ((asp) this.f.get(size)).a(j);
            }
            if (this.n != null) {
                this.n.a(this);
            }
            ark.j();
            aru.b().a(ark);
        } catch (Exception e) {
            this.c.put(Long.valueOf(j), ciz.c);
            a("Failed to load featureSwitches.", e);
        }
    }

    public void d(long j) {
        bvo.a(this.h, j, a(), this.e);
    }

    public synchronized void c() {
        d(0);
    }

    private boolean g() {
        if (this.d < 0) {
            try {
                this.d = cpa.a(Long.toString(b.a()), "feature_switches_configs_crashlytics_enabled");
            } catch (Exception e) {
            }
        }
        return this.d > 0 && this.d < 10;
    }

    private boolean h() {
        try {
            return ((Boolean) e.b(a(this.l, "feature_switches_configs_crashlytics_enabled"), Boolean.valueOf(g()))).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    public void a(String str, Exception exception) {
        if (AppConfig.m().a()) {
            cfb.c("Server_FCP", str, exception);
            if (!this.j) {
                this.i.post(new bvn(this, str));
                return;
            }
            return;
        }
        try {
            if (!this.j && h()) {
                bbn.a(exception);
            }
        } catch (Exception e) {
        }
    }

    public void a(h hVar) {
        this.n = hVar;
    }

    public void a(asp asp) {
        if (!this.f.contains(asp)) {
            this.f.add(asp);
            if (a(this.l)) {
                asp.a(this.l);
            }
        }
    }

    public void b(asp asp) {
        this.f.remove(asp);
    }

    private long i() {
        return ((long) ((Number) e.b(a(this.l, "feature_switches_configs_wait_before_kill_minutes"), Integer.valueOf(0))).intValue()) * HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
    }

    public void d() {
        synchronized (this.k) {
            if (this.a) {
                long i = i();
                if (i > 0) {
                    this.i.postDelayed(this.k, i);
                }
            }
        }
    }

    public void e() {
        synchronized (this.k) {
            this.i.removeCallbacks(this.k);
        }
    }

    public synchronized String f() {
        ciz ciz;
        ciz = (ciz) this.c.get(Long.valueOf(this.l));
        return ciz != null ? ciz.d() : TtmlNode.ANONYMOUS_REGION_ID;
    }
}
