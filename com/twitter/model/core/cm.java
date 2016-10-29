package com.twitter.model.core;

import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.d;
import com.twitter.model.search.p;
import com.twitter.util.m;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.cgl;
import defpackage.cni;

/* compiled from: Twttr */
public class cm implements t {
    public static final cm a;
    public final bw A;
    public final bz B;
    public TwitterUser C;
    public boolean D;
    public int E;
    public cm F;
    public long G;
    public boolean H;
    public p I;
    public long J;
    public final long b;
    public final String c;
    public boolean d;
    public final bg e;
    public final String f;
    public final boolean g;
    public final long h;
    public final String i;
    public final long j;
    public final long k;
    public final String l;
    public final boolean m;
    public final long n;
    public final cm o;
    public final int p;
    public final long q;
    public final String r;
    public final boolean s;
    public final boolean t;
    public final boolean u;
    public final String v;
    public final cni w;
    public final d x;
    public final TwitterPlace y;
    public final cgl z;

    static {
        a = (cm) new cn().a(1).b(TwitterUser.b).q();
    }

    cm(cn cnVar) {
        this.b = cnVar.a;
        this.C = cnVar.c;
        this.e = (bg) e.b(cnVar.f, bg.a);
        this.h = cnVar.g;
        this.i = cnVar.h;
        this.j = cnVar.i;
        this.k = cnVar.j;
        this.l = cnVar.k;
        this.m = cnVar.l;
        this.n = cnVar.m;
        this.o = cnVar.n;
        this.D = cnVar.o;
        this.p = cnVar.p;
        this.E = cnVar.q;
        this.q = cnVar.r;
        this.r = (String) e.b(cnVar.s, "und");
        this.v = cnVar.t;
        this.s = cnVar.u;
        this.t = cnVar.v;
        this.u = cnVar.w;
        this.w = cnVar.x;
        this.x = cnVar.y;
        this.y = cnVar.z;
        this.F = cnVar.A;
        this.G = cnVar.B;
        this.H = cnVar.C;
        cgl cgl = (cnVar.D != null || this.o == null) ? cnVar.D : this.o.z;
        this.z = cgl;
        this.I = cnVar.E;
        if (d() || !(this.w == null || this.w.c())) {
            this.J = m.b();
        } else {
            this.J = this.h;
        }
        this.A = cnVar.F;
        this.B = cnVar.G;
        this.c = e.b(cnVar.e);
        this.f = bg.a(new StringBuilder(this.c), this.e);
        this.g = bg.b(this.c, this.e);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cm) && a((cm) obj));
    }

    public boolean a(cm cmVar) {
        return this == cmVar || (cmVar != null && this.b == cmVar.b);
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }

    public long bf_() {
        return this.o != null ? this.o.b : this.b;
    }

    public String bg_() {
        return String.valueOf(bf_());
    }

    public cm c() {
        return this.o != null ? this.o : this;
    }

    public boolean d() {
        return this.I != null && "popular".equals(this.I.e);
    }

    public boolean e() {
        return this.I != null && "news".equals(this.I.e);
    }

    public boolean f() {
        return this.w != null;
    }

    public boolean g() {
        return this.o != null && this.n > 0;
    }

    public boolean h() {
        return this.B != null;
    }
}
