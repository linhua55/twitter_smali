package com.facebook.cache.disk;

/* compiled from: Twttr */
class o {
    private boolean a;
    private long b;
    private long c;

    o() {
        this.a = false;
        this.b = -1;
        this.c = -1;
    }

    public synchronized boolean a() {
        return this.a;
    }

    public synchronized void b() {
        this.a = false;
        this.c = -1;
        this.b = -1;
    }

    public synchronized void a(long j, long j2) {
        this.c = j2;
        this.b = j;
        this.a = true;
    }

    public synchronized void b(long j, long j2) {
        if (this.a) {
            this.b += j;
            this.c += j2;
        }
    }

    public synchronized long c() {
        return this.b;
    }
}
