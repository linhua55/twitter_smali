package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.bad;

/* compiled from: Twttr */
final class mu implements bad {
    private final Cursor a;

    private mu(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
