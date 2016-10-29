package com.twitter.library.scribe;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public class n extends f<MomentScribeDetails$Metadata> {
    public int a;
    public long b;
    public int c;
    public int d;

    protected /* synthetic */ Object c() {
        return d();
    }

    public n a(int i) {
        this.a = i;
        return this;
    }

    public n a(long j) {
        this.b = j;
        return this;
    }

    public n b(int i) {
        this.c = i;
        return this;
    }

    public n c(int i) {
        this.d = i;
        return this;
    }

    protected MomentScribeDetails$Metadata d() {
        return new MomentScribeDetails$Metadata(this);
    }
}
