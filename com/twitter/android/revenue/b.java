package com.twitter.android.revenue;

/* compiled from: Twttr */
public abstract class b {
    private long a;
    private long b;
    private String c;
    private String d;
    private long e;
    private long f;
    private long g;

    protected abstract boolean a();

    protected abstract a b();

    public b a(long j) {
        this.a = j;
        return this;
    }

    public b b(long j) {
        this.b = j;
        return this;
    }

    public b a(String str) {
        this.c = str;
        return this;
    }

    public b b(String str) {
        this.d = str;
        return this;
    }

    public b c(long j) {
        this.e = j;
        return this;
    }

    public b d(long j) {
        this.f = j;
        return this;
    }

    public b e(long j) {
        this.g = j;
        return this;
    }

    public final a c() {
        if (a()) {
            return b();
        }
        return null;
    }
}
