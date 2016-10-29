package com.twitter.model.core;

/* compiled from: Twttr */
public class r extends f<q, r> {
    String a;
    int e;
    int f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public /* bridge */ /* synthetic */ int e() {
        return super.e();
    }

    public /* bridge */ /* synthetic */ int f() {
        return super.f();
    }

    public r() {
        this.e = -1;
        this.f = -1;
    }

    public r(q qVar) {
        super(qVar);
        this.e = -1;
        this.f = -1;
        this.a = qVar.c;
        this.e = qVar.i;
        this.f = qVar.j;
    }

    public r a(String str) {
        this.a = str;
        return this;
    }

    public r d(int i) {
        this.e = i;
        return this;
    }

    public r e(int i) {
        this.f = i;
        return this;
    }

    protected void X_() {
        super.X_();
        if (!(this.c == -1 || this.d != -1 || this.a == null)) {
            this.d = (this.c + this.a.length()) + 1;
        }
        if (this.f == 0 && this.a != null) {
            this.f = (this.e + this.a.length()) + 1;
        }
    }

    protected q d() {
        return new q(this);
    }
}
