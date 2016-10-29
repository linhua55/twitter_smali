package com.twitter.library.geo.provider.param;

/* compiled from: Twttr */
public class a {
    public final LocationPriority a;
    public final float b;
    public final long c;
    public final long d;
    public final int e;

    public static c a() {
        return new c();
    }

    private a(c cVar) {
        this.a = cVar.a;
        this.b = cVar.b;
        this.c = cVar.c;
        this.d = cVar.d;
        this.e = Math.max(1, cVar.e);
    }
}
