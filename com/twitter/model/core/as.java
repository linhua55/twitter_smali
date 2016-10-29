package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;
import defpackage.cgl;
import defpackage.cni;
import defpackage.cpf;
import java.util.Iterator;
import java.util.Set;

/* compiled from: Twttr */
public class as {
    public static final n<as> a;
    public long b;
    public String c;
    public String d;
    public long e;
    public String f;
    public String g;
    public bg h;
    public long i;
    public String j;
    public cgl k;
    public boolean l;
    public cni m;
    public boolean n;
    public boolean o;
    public String p;
    public long q;
    public long r;

    static {
        a = new au(null);
    }

    public as() {
        this.h = bg.a;
    }

    public as(cm cmVar) {
        this.h = bg.a;
        cm c = cmVar.c();
        TwitterUser twitterUser = c.C;
        this.e = c.b;
        this.b = twitterUser.c;
        this.c = twitterUser.c();
        this.d = twitterUser.k;
        this.f = c.c;
        this.g = c.f;
        this.h = c.e;
        this.i = c.h;
        this.j = c.C.e;
        if (c.z != null) {
            this.k = c.z;
        }
        this.l = c.s;
        this.m = c.w;
        this.n = !twitterUser.m;
        this.o = cmVar.D;
        this.p = c.i;
        this.q = c.k;
        this.r = c.j;
    }

    public as(Tweet tweet) {
        this.h = bg.a;
        this.e = tweet.t;
        this.b = tweet.s;
        this.c = tweet.d();
        this.d = tweet.v;
        this.f = tweet.f();
        this.g = tweet.g();
        this.h = tweet.w;
        this.i = tweet.q;
        this.j = tweet.r;
        this.k = tweet.aa();
        this.l = tweet.D();
        this.m = tweet.f;
        this.n = !tweet.G;
        this.o = tweet.a;
        this.p = tweet.C;
        this.q = tweet.D;
        this.r = tweet.F;
    }

    public boolean equals(Object obj) {
        return this == obj || (obj != null && (obj instanceof as) && a((as) obj));
    }

    public boolean a(as asVar) {
        return this == asVar || (asVar != null && this.b == asVar.b && ObjectUtils.a(this.c, asVar.c) && ObjectUtils.a(this.d, asVar.d) && this.e == asVar.e && ObjectUtils.a(this.f, asVar.f) && ObjectUtils.a(this.g, asVar.g) && this.h.a(asVar.h) && this.i == asVar.i && ObjectUtils.a(this.j, asVar.j) && ObjectUtils.a(this.k, asVar.k) && this.l == asVar.l && ObjectUtils.a(this.m, asVar.m) && this.n == asVar.n && this.o == asVar.o && ObjectUtils.a(this.p, asVar.p) && this.q == asVar.q && this.r == asVar.r);
    }

    public int hashCode() {
        int i;
        int i2 = 1;
        int a = ((((this.l ? 1 : 0) + (((((((((((((((((((ObjectUtils.a(this.b) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.a(this.e)) * 31) + ObjectUtils.b(this.f)) * 31) + ObjectUtils.b(this.g)) * 31) + this.h.hashCode()) * 31) + ObjectUtils.a(this.i)) * 31) + ObjectUtils.b(this.j)) * 31) + ObjectUtils.b(this.k)) * 31)) * 31) + ObjectUtils.b(this.m)) * 31;
        if (this.n) {
            i = 1;
        } else {
            i = 0;
        }
        i = (i + a) * 31;
        if (!this.o) {
            i2 = 0;
        }
        return ((((((i + i2) * 31) + ObjectUtils.b(this.p)) * 31) + ObjectUtils.a(this.q)) * 31) + ObjectUtils.a(this.r);
    }

    public String a() {
        return Tweet.a(this.e, this.d);
    }

    public boolean b() {
        return this.q > 0;
    }

    public void a(long j, Set<az> set) {
        if (j != this.b) {
            set.add(new az(this.d, this.b, this.c));
        }
        Iterator it = this.h.e.iterator();
        while (it.hasNext()) {
            ap apVar = (ap) it.next();
            if (apVar.c != j) {
                set.add(az.a(apVar));
            }
        }
        if (!this.h.d.c()) {
            for (ag agVar : cpf.a(this.h.d)) {
                if (j != agVar.b) {
                    set.add(az.a(agVar));
                }
            }
        }
    }
}
