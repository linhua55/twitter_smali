package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayl;

/* compiled from: Twttr */
final class jh implements ayl {
    private final Cursor a;

    private jh(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
