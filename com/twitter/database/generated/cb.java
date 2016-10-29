package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avi;

/* compiled from: Twttr */
final class cb implements avi {
    private final Cursor a;

    private cb(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
