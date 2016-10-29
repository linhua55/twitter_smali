package com.twitter.android.eventtimelines.tv.show;

/* compiled from: Twttr */
public class s {
    public static final s a;
    public final long b;

    static {
        a = new s(-1);
    }

    public s(long j) {
        this.b = j;
    }

    public String a() {
        return String.format("%s.%s.%s", new Object[]{Integer.valueOf(2), Integer.valueOf(3), Long.valueOf(this.b)});
    }
}
