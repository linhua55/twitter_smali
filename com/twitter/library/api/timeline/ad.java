package com.twitter.library.api.timeline;

import com.twitter.library.provider.di;

/* compiled from: Twttr */
public class ad implements al {
    private final di a;
    private final int b;
    private final long c;
    private final long d;

    public ad(di diVar, int i, long j, long j2) {
        this.a = diVar;
        this.b = i;
        this.c = j;
        this.d = j2;
    }

    public String a() {
        return this.a.b(this.b, this.c, this.d);
    }

    public String b() {
        return this.a.c(this.b, this.c, this.d);
    }

    public String c() {
        return this.a.a(this.b, 4, this.c, this.d);
    }

    public String d() {
        return this.a.a(this.b, 5, this.c, this.d);
    }
}
