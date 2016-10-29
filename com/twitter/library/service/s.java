package com.twitter.library.service;

import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class s extends f {
    private static final int b;

    static {
        b = (int) TimeUnit.MINUTES.toMillis(1);
    }

    public s(int i, int i2) {
        super(i, i, i2);
    }

    public s() {
        this(500, b);
    }

    protected int a() {
        return this.a;
    }
}
