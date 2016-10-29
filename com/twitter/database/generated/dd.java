package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avy;

/* compiled from: Twttr */
final class dd implements avy {
    private final Cursor a;

    private dd(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
