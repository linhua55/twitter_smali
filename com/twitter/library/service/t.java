package com.twitter.library.service;

import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class t extends f {
    public static final int b;
    public static final int c;
    public static final int d;

    static {
        b = (int) TimeUnit.SECONDS.toMillis(3);
        c = (int) TimeUnit.MINUTES.toMillis(5);
        d = (int) TimeUnit.HOURS.toMillis(1);
    }

    public t(int i, int i2, int i3) {
        super(i, i2, i3);
    }

    public t(int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
    }

    public t() {
        this(b, c, d);
    }

    protected int a() {
        return this.a * 2;
    }
}
