package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.bbb;

/* compiled from: Twttr */
final class ot implements bbb {
    private final Cursor a;

    private ot(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
