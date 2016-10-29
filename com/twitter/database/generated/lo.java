package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azr;

/* compiled from: Twttr */
final class lo implements azr {
    private final Cursor a;

    private lo(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
