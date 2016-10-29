package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.n;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.Future;

@oi
public class pw implements qp {
    private final Object a;
    private final String b;
    private final px c;
    private as d;
    private BigInteger e;
    private final HashSet<pu> f;
    private final HashMap<String, pz> g;
    private boolean h;
    private boolean i;
    private int j;
    private boolean k;
    private Context l;
    private VersionInfoParcel m;
    private cm n;
    private boolean o;
    private bh p;
    private bi q;
    private bg r;
    private String s;
    private final LinkedList<Thread> t;
    private final oh u;
    private Boolean v;
    private String w;
    private boolean x;
    private boolean y;

    public pw(qw qwVar) {
        this.a = new Object();
        this.e = BigInteger.ONE;
        this.f = new HashSet();
        this.g = new HashMap();
        this.h = false;
        this.i = true;
        this.j = 0;
        this.k = false;
        this.n = null;
        this.o = true;
        this.p = null;
        this.q = null;
        this.r = null;
        this.t = new LinkedList();
        this.u = null;
        this.v = null;
        this.x = false;
        this.y = false;
        this.b = qwVar.c();
        this.c = new px(this.b);
    }

    public Bundle a(Context context, py pyVar, String str) {
        Bundle bundle;
        synchronized (this.a) {
            bundle = new Bundle();
            bundle.putBundle("app", this.c.a(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.g.keySet()) {
                bundle2.putBundle(str2, ((pz) this.g.get(str2)).a());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f.iterator();
            while (it.hasNext()) {
                arrayList.add(((pu) it.next()).d());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            pyVar.a(this.f);
            this.f.clear();
        }
        return bundle;
    }

    public bi a(Context context) {
        if (!((Boolean) cj.J.c()).booleanValue() || !vu.c() || b()) {
            return null;
        }
        synchronized (this.a) {
            if (this.p == null) {
                if (context instanceof Activity) {
                    this.p = new bh((Application) context.getApplicationContext(), (Activity) context);
                } else {
                    return null;
                }
            }
            if (this.r == null) {
                this.r = new bg();
            }
            if (this.q == null) {
                this.q = new bi(this.p, this.r, new oh(this.l, this.m, null, null));
            }
            this.q.a();
            bi biVar = this.q;
            return biVar;
        }
    }

    public String a() {
        return this.b;
    }

    public String a(int i, String str) {
        Resources resources = this.m.e ? this.l.getResources() : n.getRemoteResource(this.l);
        return resources == null ? str : resources.getString(i);
    }

    public Future a(Context context, boolean z) {
        Future a;
        synchronized (this.a) {
            if (z != this.i) {
                this.i = z;
                a = qf.a(context, z);
            } else {
                a = null;
            }
        }
        return a;
    }

    public Future a(String str) {
        Future a;
        synchronized (this.a) {
            if (str != null) {
                if (!str.equals(this.s)) {
                    this.s = str;
                    a = qf.a(this.l, str);
                }
            }
            a = null;
        }
        return a;
    }

    @TargetApi(23)
    public void a(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (this.a) {
            if (!this.k) {
                this.l = context.getApplicationContext();
                this.m = versionInfoParcel;
                qf.a(context, (qp) this);
                qf.b(context, (qp) this);
                qf.c(context, this);
                qf.d(context, this);
                a(Thread.currentThread());
                this.w = ar.e().a(context, versionInfoParcel.b);
                if (vu.k() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.y = true;
                }
                this.d = new as(context.getApplicationContext(), this.m, new ik(context.getApplicationContext(), this.m, (String) cj.b.c()));
                n();
                ar.o().a(this.l);
                this.k = true;
            }
        }
    }

    public void a(Bundle bundle) {
        synchronized (this.a) {
            this.i = bundle.containsKey("use_https") ? bundle.getBoolean("use_https") : this.i;
            this.j = bundle.containsKey("webview_cache_version") ? bundle.getInt("webview_cache_version") : this.j;
            if (bundle.containsKey("content_url_opted_out")) {
                a(bundle.getBoolean("content_url_opted_out"));
            }
            if (bundle.containsKey("content_url_hashes")) {
                this.s = bundle.getString("content_url_hashes");
            }
        }
    }

    public void a(pu puVar) {
        synchronized (this.a) {
            this.f.add(puVar);
        }
    }

    public void a(Boolean bool) {
        synchronized (this.a) {
            this.v = bool;
        }
    }

    public void a(String str, pz pzVar) {
        synchronized (this.a) {
            this.g.put(str, pzVar);
        }
    }

    public void a(Thread thread) {
        oh.a(this.l, thread, this.m);
    }

    public void a(Throwable th, boolean z) {
        new oh(this.l, this.m, null, null).a(th, z);
    }

    public void a(HashSet<pu> hashSet) {
        synchronized (this.a) {
            this.f.addAll(hashSet);
        }
    }

    public void a(boolean z) {
        synchronized (this.a) {
            if (this.o != z) {
                qf.b(this.l, z);
            }
            this.o = z;
            bi a = a(this.l);
            if (!(a == null || a.isAlive())) {
                b.c("start fetching content...");
                a.a();
            }
        }
    }

    public void b(boolean z) {
        synchronized (this.a) {
            this.x = z;
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.a) {
            z = this.o;
        }
        return z;
    }

    public String c() {
        String bigInteger;
        synchronized (this.a) {
            bigInteger = this.e.toString();
            this.e = this.e.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public px d() {
        px pxVar;
        synchronized (this.a) {
            pxVar = this.c;
        }
        return pxVar;
    }

    public cm e() {
        cm cmVar;
        synchronized (this.a) {
            cmVar = this.n;
        }
        return cmVar;
    }

    public boolean f() {
        boolean z;
        synchronized (this.a) {
            z = this.h;
            this.h = true;
        }
        return z;
    }

    public boolean g() {
        boolean z;
        synchronized (this.a) {
            z = this.i || this.y;
        }
        return z;
    }

    public String h() {
        String str;
        synchronized (this.a) {
            str = this.w;
        }
        return str;
    }

    public String i() {
        String str;
        synchronized (this.a) {
            str = this.s;
        }
        return str;
    }

    public Boolean j() {
        Boolean bool;
        synchronized (this.a) {
            bool = this.v;
        }
        return bool;
    }

    public as k() {
        return this.d;
    }

    public boolean l() {
        boolean z;
        synchronized (this.a) {
            if (this.j < ((Integer) cj.aa.c()).intValue()) {
                this.j = ((Integer) cj.aa.c()).intValue();
                qf.a(this.l, this.j);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean m() {
        boolean z;
        synchronized (this.a) {
            z = this.x;
        }
        return z;
    }

    void n() {
        try {
            this.n = ar.j().a(new cl(this.l, this.m.b));
        } catch (Throwable e) {
            b.d("Cannot initialize CSI reporter.", e);
        }
    }
}
