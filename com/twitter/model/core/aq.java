package com.twitter.model.core;

/* compiled from: Twttr */
public class aq extends f<ap, aq> {
    long a;
    String e;
    String f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public /* bridge */ /* synthetic */ int e() {
        return super.e();
    }

    public /* bridge */ /* synthetic */ int f() {
        return super.f();
    }

    public aq(ap apVar) {
        super(apVar);
        this.a = apVar.c;
        this.e = apVar.i;
        this.f = apVar.j;
    }

    public aq a(long j) {
        this.a = j;
        return this;
    }

    public aq a(String str) {
        this.e = str;
        return this;
    }

    public aq b(String str) {
        this.f = str;
        return this;
    }

    protected void X_() {
        super.X_();
        if (this.c != -1 && this.d == -1 && this.e != null) {
            this.d = (this.c + this.e.length()) + 1;
        }
    }

    protected ap d() {
        return new ap(this);
    }
}
