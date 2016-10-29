package com.twitter.android.card;

/* compiled from: Twttr */
public class j {
    private static j a;
    private long b;
    private Integer c;
    private k d;

    public static void a() {
        a = new j();
    }

    public static j b() {
        return a;
    }

    j() {
    }

    public void a(long j) {
        this.b = j;
        this.c = null;
    }

    public void a(long j, int i) {
        if (this.b == j) {
            this.c = Integer.valueOf(i);
            if (this.d != null) {
                this.d.a(i);
            }
        }
    }

    public Integer b(long j) {
        if (this.b != j || this.c == null) {
            return null;
        }
        Integer num = this.c;
        this.b = 0;
        this.c = null;
        return num;
    }
}
