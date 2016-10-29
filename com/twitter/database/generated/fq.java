package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awy;

/* compiled from: Twttr */
final class fq implements awy {
    private final Cursor a;

    private fq(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
