package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.baf;

/* compiled from: Twttr */
final class my implements baf {
    private final Cursor a;

    private my(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
