package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayz;

/* compiled from: Twttr */
final class ke implements ayz {
    private final Cursor a;

    private ke(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
