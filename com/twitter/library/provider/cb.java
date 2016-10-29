package com.twitter.library.provider;

import android.database.CursorIndexOutOfBoundsException;

/* compiled from: Twttr */
public class cb {
    final /* synthetic */ ParcelableMatrixCursor a;
    private int b;
    private final int c;

    cb(ParcelableMatrixCursor parcelableMatrixCursor, int i, int i2) {
        this.a = parcelableMatrixCursor;
        this.b = i;
        this.c = i2;
    }

    public cb a(Object obj) {
        if (this.b == this.c) {
            throw new CursorIndexOutOfBoundsException("No more columns left.");
        }
        Object[] a = this.a.b;
        int i = this.b;
        this.b = i + 1;
        a[i] = obj;
        return this;
    }
}
