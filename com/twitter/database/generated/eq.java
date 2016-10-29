package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awm;

/* compiled from: Twttr */
final class eq implements awm {
    private final Cursor a;

    private eq(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
