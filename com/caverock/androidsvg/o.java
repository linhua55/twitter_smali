package com.caverock.androidsvg;

/* compiled from: Twttr */
public class o extends av {
    public static final o b;
    public int a;

    static {
        b = new o(0);
    }

    public o(int i) {
        this.a = i;
    }

    public String toString() {
        return String.format("#%06x", new Object[]{Integer.valueOf(this.a)});
    }
}
