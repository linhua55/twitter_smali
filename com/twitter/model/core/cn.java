package com.twitter.model.core;

import bbn;
import cgl;
import cni;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.d;
import com.twitter.model.search.p;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class cn extends f<cm> {
    cm A;
    long B;
    boolean C;
    cgl D;
    p E;
    bw F;
    bz G;
    long a;
    TwitterUser b;
    TwitterUser c;
    String d;
    String e;
    bg f;
    long g;
    String h;
    long i;
    long j;
    String k;
    boolean l;
    long m;
    cm n;
    boolean o;
    int p;
    int q;
    long r;
    String s;
    String t;
    boolean u;
    boolean v;
    boolean w;
    cni x;
    d y;
    TwitterPlace z;

    protected /* synthetic */ Object c() {
        return g();
    }

    public cn() {
        this.a = -1;
        this.i = -1;
        this.j = -1;
        this.m = -1;
        this.r = -1;
    }

    public cn(cm cmVar) {
        this.a = -1;
        this.i = -1;
        this.j = -1;
        this.m = -1;
        this.r = -1;
        this.a = cmVar.b;
        this.c = cmVar.C;
        this.e = cmVar.c;
        this.f = cmVar.e;
        this.g = cmVar.h;
        this.h = cmVar.i;
        this.i = cmVar.j;
        this.j = cmVar.k;
        this.k = cmVar.l;
        this.l = cmVar.m;
        this.m = cmVar.n;
        this.n = cmVar.o;
        this.o = cmVar.D;
        this.p = cmVar.p;
        this.q = cmVar.E;
        this.r = cmVar.q;
        this.s = cmVar.r;
        this.t = cmVar.v;
        this.u = cmVar.s;
        this.v = cmVar.t;
        this.w = cmVar.u;
        this.x = cmVar.w;
        this.z = cmVar.y;
        this.A = cmVar.F;
        this.B = cmVar.G;
        this.C = cmVar.H;
        this.D = cmVar.z;
        this.E = cmVar.I;
        this.F = cmVar.A;
        this.G = cmVar.B;
    }

    public cn a(long j) {
        this.a = j;
        return this;
    }

    public cn a(TwitterUser twitterUser) {
        this.b = twitterUser;
        return this;
    }

    public cn b(TwitterUser twitterUser) {
        this.c = twitterUser;
        return this;
    }

    public String d() {
        return this.c != null ? this.c.bg_() : this.d;
    }

    public cn a(String str) {
        this.d = str;
        return this;
    }

    public cn b(String str) {
        this.e = str;
        return this;
    }

    public cn a(bg bgVar) {
        this.f = bgVar;
        return this;
    }

    public cn b(long j) {
        this.g = j;
        return this;
    }

    public cn c(String str) {
        this.h = str;
        return this;
    }

    public cn c(long j) {
        this.i = j;
        return this;
    }

    public cn d(long j) {
        this.j = j;
        return this;
    }

    public cn d(String str) {
        this.k = str;
        return this;
    }

    public cn a(boolean z) {
        this.l = z;
        return this;
    }

    public cn e(long j) {
        this.m = j;
        return this;
    }

    public cn a(cm cmVar) {
        this.n = cmVar;
        return this;
    }

    public cn b(boolean z) {
        this.o = z;
        return this;
    }

    public cn a(int i) {
        this.p = i;
        return this;
    }

    public cn b(int i) {
        this.q = i;
        return this;
    }

    public cn f(long j) {
        this.r = j;
        return this;
    }

    public cn e(String str) {
        this.s = str;
        return this;
    }

    public cn f(String str) {
        this.t = str;
        return this;
    }

    public cn c(boolean z) {
        this.u = z;
        return this;
    }

    public cn d(boolean z) {
        this.v = z;
        return this;
    }

    public cn e(boolean z) {
        this.w = z;
        return this;
    }

    public cni e() {
        return this.x;
    }

    public cn a(cni cni) {
        this.x = cni;
        return this;
    }

    public cn a(d dVar) {
        this.y = dVar;
        return this;
    }

    public cn a(TwitterPlace twitterPlace) {
        this.z = twitterPlace;
        return this;
    }

    public cn b(cm cmVar) {
        this.A = cmVar;
        if (cmVar != null) {
            this.C = true;
            g(cmVar.b);
        }
        return this;
    }

    public cn g(long j) {
        this.B = j;
        if (j > 0) {
            this.C = true;
        }
        return this;
    }

    public cn f(boolean z) {
        this.C = z;
        return this;
    }

    public cn a(cgl cgl) {
        this.D = cgl;
        return this;
    }

    public cn a(p pVar) {
        this.E = pVar;
        return this;
    }

    public cn a(bw bwVar) {
        this.F = bwVar;
        return this;
    }

    public cn a(bz bzVar) {
        this.G = bzVar;
        return this;
    }

    public boolean bo_() {
        return this.a > 0 && this.c != null;
    }

    protected boolean bh_() {
        if (super.bh_()) {
            return true;
        }
        if (this.a <= 0) {
            bbn.a(new IllegalStateException("Tried to build tweet with an invalid id."));
        } else if (this.c == null) {
            bbn.a(new IllegalStateException("Tried to build tweet with an invalid user."));
        }
        return false;
    }

    protected cm g() {
        if (!(this.m == -1 || this.b == null || this.n != null)) {
            this.n = new cm(this);
            this.a = this.m;
            this.c = this.b;
        }
        return new cm(this);
    }
}
