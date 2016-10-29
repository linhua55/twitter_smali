package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.axa;

/* compiled from: Twttr */
final class fu implements axa {
    private final Cursor a;

    private fu(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
