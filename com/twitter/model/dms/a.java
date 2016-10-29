package com.twitter.model.dms;

import com.twitter.model.core.t;

/* compiled from: Twttr */
public abstract class a implements t {
    public final long g;
    public final String h;
    public final long i;

    public abstract int g();

    public a(b bVar) {
        this.g = b.a(bVar);
        this.h = b.b(bVar);
        this.i = b.c(bVar);
    }

    public long bf_() {
        return this.g;
    }

    public String bg_() {
        return String.valueOf(this.g);
    }

    public boolean b(long j) {
        return d() == j;
    }

    public long d() {
        return -1;
    }
}
