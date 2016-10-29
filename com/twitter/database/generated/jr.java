package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayr;

/* compiled from: Twttr */
final class jr implements ayr {
    private final Cursor a;

    private jr(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
