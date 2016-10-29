package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azz;

/* compiled from: Twttr */
final class mo implements azz {
    private final Cursor a;

    private mo(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(2);
    }
}
