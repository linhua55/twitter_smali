package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;

/* compiled from: Twttr */
public class g {
    private static final SparseIntArray a;

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }

    static {
        a = new SparseIntArray(0);
    }

    public static y a() {
        return new y(0, b(), a);
    }
}
