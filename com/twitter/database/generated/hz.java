package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayd;

/* compiled from: Twttr */
final class hz implements ayd {
    private final Cursor a;

    private hz(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
