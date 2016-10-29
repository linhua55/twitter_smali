package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.aum;

/* compiled from: Twttr */
final class ao implements aum {
    private final Cursor a;

    private ao(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
