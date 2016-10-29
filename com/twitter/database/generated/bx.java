package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avg;

/* compiled from: Twttr */
final class bx implements avg {
    private final Cursor a;

    private bx(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
