package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import defpackage.bx;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class y {
    public final int a;
    public final int b;
    public final SparseIntArray c;
    public final int d;
    public final int e;
    public final int f;

    public y(int i, int i2, @Nullable SparseIntArray sparseIntArray) {
        this(i, i2, sparseIntArray, 0, Integer.MAX_VALUE, -1);
    }

    public y(int i, int i2, @Nullable SparseIntArray sparseIntArray, int i3, int i4, int i5) {
        boolean z = i >= 0 && i2 >= i;
        bx.b(z);
        this.b = i;
        this.a = i2;
        this.c = sparseIntArray;
        this.d = i3;
        this.e = i4;
        this.f = i5;
    }
}
