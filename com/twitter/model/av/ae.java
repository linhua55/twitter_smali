package com.twitter.model.av;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class ae extends f<ad> {
    long a;
    float b;
    int c;

    protected /* synthetic */ Object c() {
        return d();
    }

    public ae a(long j) {
        this.a = j;
        return this;
    }

    public ae a(float f) {
        this.b = f;
        return this;
    }

    public ae a(int i) {
        this.c = i;
        return this;
    }

    protected ad d() {
        return new ad(this);
    }
}
