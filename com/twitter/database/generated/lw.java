package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azv;

/* compiled from: Twttr */
final class lw implements azv {
    private final Cursor a;

    private lw(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
