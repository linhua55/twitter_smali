package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avk;

/* compiled from: Twttr */
final class cf implements avk {
    private final Cursor a;

    private cf(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
