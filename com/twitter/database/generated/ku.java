package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azj;

/* compiled from: Twttr */
final class ku implements azj {
    private final Cursor a;

    private ku(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
