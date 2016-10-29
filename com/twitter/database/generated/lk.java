package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azp;

/* compiled from: Twttr */
final class lk implements azp {
    private final Cursor a;

    private lk(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
