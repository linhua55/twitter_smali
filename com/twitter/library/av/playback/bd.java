package com.twitter.library.av.playback;

/* compiled from: Twttr */
public class bd {
    public static final bd a;
    public final long b;
    public final long c;
    public final int d;

    static {
        a = new bd(0, 0);
    }

    public bd(long j, long j2) {
        this.d = a(j, j2);
        if (a()) {
            j = j2;
        }
        this.b = j;
        this.c = j2;
    }

    public boolean a() {
        return this.d == 100;
    }

    private static int a(long j, long j2) {
        if (j2 <= 0 || j <= 0) {
            return 0;
        }
        return (int) Math.round((100.0d * ((double) j)) / ((double) j2));
    }
}
