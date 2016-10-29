package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avu;

/* compiled from: Twttr */
final class cv implements avu {
    private final Cursor a;

    private cv(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
