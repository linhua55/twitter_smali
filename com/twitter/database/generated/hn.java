package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.axx;

/* compiled from: Twttr */
final class hn implements axx {
    private final Cursor a;

    private hn(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(17);
    }
}
