package com.twitter.model.core;

import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class f<E extends e, B extends f<E, B>> extends com.twitter.util.object.f<E> {
    int b;
    int c;
    int d;

    protected f() {
        this.b = -1;
        this.c = -1;
        this.d = -1;
    }

    protected f(e eVar) {
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.b = eVar.f;
        this.c = eVar.g;
        this.d = eVar.h;
    }

    public int f() {
        return this.c;
    }

    public B a(int i) {
        this.c = i;
        return (f) ObjectUtils.a((Object) this);
    }

    public int e() {
        return this.d;
    }

    public B b(int i) {
        this.d = i;
        return (f) ObjectUtils.a((Object) this);
    }

    public B c(int i) {
        this.b = i;
        return (f) ObjectUtils.a((Object) this);
    }

    protected void X_() {
        super.X_();
        if (this.b == -1) {
            this.b = this.c;
        }
    }
}
