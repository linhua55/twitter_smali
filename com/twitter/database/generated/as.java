package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.auo;

/* compiled from: Twttr */
final class as implements auo {
    private final Cursor a;

    private as(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
