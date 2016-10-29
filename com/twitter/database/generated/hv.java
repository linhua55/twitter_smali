package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayb;

/* compiled from: Twttr */
final class hv implements ayb {
    private final Cursor a;

    private hv(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
