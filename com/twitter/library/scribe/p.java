package com.twitter.library.scribe;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class p extends f<MomentScribeDetails$Transition> {
    long a;
    long b;
    long c;
    boolean d;
    boolean e;

    public p() {
        this.a = Long.MIN_VALUE;
        this.b = Long.MIN_VALUE;
        this.c = Long.MIN_VALUE;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public p a(long j) {
        this.a = j;
        return this;
    }

    public p b(long j) {
        this.b = j;
        return this;
    }

    public p c(long j) {
        this.c = j;
        return this;
    }

    public p a(boolean z) {
        this.d = z;
        return this;
    }

    public p b(boolean z) {
        this.e = z;
        return this;
    }

    protected MomentScribeDetails$Transition d() {
        return new MomentScribeDetails$Transition();
    }
}
