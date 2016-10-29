package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awe;

/* compiled from: Twttr */
final class dp implements awe {
    private final Cursor a;

    private dp(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
