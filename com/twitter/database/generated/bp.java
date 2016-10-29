package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;

/* compiled from: Twttr */
final class bp implements avc {
    private final Cursor a;

    private bp(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
