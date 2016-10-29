package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;

/* compiled from: Twttr */
public class i {
    public static final int a;

    static {
        a = Runtime.getRuntime().availableProcessors();
    }

    public static SparseIntArray a(int i, int i2, int i3) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (i <= i2) {
            sparseIntArray.put(i, i3);
            i *= 2;
        }
        return sparseIntArray;
    }

    public static y a() {
        return new y(4194304, a * 4194304, a(131072, 4194304, a), 131072, 4194304, a);
    }
}
