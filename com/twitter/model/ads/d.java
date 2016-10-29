package com.twitter.model.ads;

import com.twitter.util.object.f;

/* compiled from: Twttr */
public final class d extends f<a> {
    long a;
    String b;
    int c;
    boolean d;
    boolean e;
    boolean f;

    protected /* synthetic */ Object c() {
        return d();
    }

    public boolean bo_() {
        return this.a > 0;
    }

    public d a(long j) {
        this.a = j;
        return this;
    }

    public d a(String str) {
        this.b = str;
        return this;
    }

    public d a(int i) {
        this.c = i;
        return this;
    }

    public d a(boolean z) {
        this.d = z;
        return this;
    }

    public d b(boolean z) {
        this.e = z;
        return this;
    }

    public d c(boolean z) {
        this.f = z;
        return this;
    }

    protected a d() {
        return new a(this);
    }
}
