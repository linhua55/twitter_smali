package com.twitter.model.moments;

import com.twitter.util.math.Size;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class i extends f<g> {
    int a;
    int b;
    int c;
    int d;
    Size e;

    public i() {
        this.e = Size.b;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public i a(int i) {
        this.a = i;
        return this;
    }

    public i b(int i) {
        this.b = i;
        return this;
    }

    public i c(int i) {
        this.c = i;
        return this;
    }

    public i d(int i) {
        this.d = i;
        return this;
    }

    public i a(Size size) {
        this.e = size;
        return this;
    }

    protected g d() {
        return new g();
    }
}
