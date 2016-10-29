package com.twitter.model.moments;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class u {
    public static final n<u> a;
    public final int b;
    public final int c;

    static {
        a = new w();
    }

    public u(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public boolean a(int i) {
        return this.b <= i && this.c >= i;
    }
}
