package com.twitter.model.core;

/* compiled from: Twttr */
public class c extends f<b, c> {
    String a;

    protected /* synthetic */ Object c() {
        return d();
    }

    public /* bridge */ /* synthetic */ int e() {
        return super.e();
    }

    public /* bridge */ /* synthetic */ int f() {
        return super.f();
    }

    public c(b bVar) {
        super(bVar);
        this.a = bVar.c;
    }

    public c a(String str) {
        this.a = str;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.c != -1 && this.d == -1 && this.a != null) {
            this.d = (this.c + this.a.length()) + 1;
        }
    }

    protected b d() {
        return new b(this);
    }
}
