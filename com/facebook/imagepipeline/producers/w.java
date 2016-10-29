package com.facebook.imagepipeline.producers;

/* compiled from: Twttr */
public abstract class w<I, O> extends d<I> {
    private final o<O> a;

    public w(o<O> oVar) {
        this.a = oVar;
    }

    public o<O> d() {
        return this.a;
    }

    protected void a(Throwable th) {
        this.a.b(th);
    }

    protected void a() {
        this.a.b();
    }

    protected void a(float f) {
        this.a.b(f);
    }
}
