package com.twitter.library.geo.provider.param;

/* compiled from: Twttr */
public class c {
    private LocationPriority a;
    private float b;
    private long c;
    private long d;
    private int e;

    public c() {
        this.a = LocationPriority.BALANCED_POWER;
    }

    public c a(LocationPriority locationPriority) {
        this.a = locationPriority;
        return this;
    }

    public c a(float f) {
        this.b = f;
        return this;
    }

    public c a(long j) {
        this.c = j;
        return this;
    }

    public c b(long j) {
        this.d = j;
        return this;
    }

    public c a(int i) {
        this.e = Math.min(1, i);
        return this;
    }

    public a a() {
        return new a();
    }
}
