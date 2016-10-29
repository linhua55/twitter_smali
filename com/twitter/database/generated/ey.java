package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awq;

/* compiled from: Twttr */
final class ey implements awq {
    private final Cursor a;

    private ey(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
