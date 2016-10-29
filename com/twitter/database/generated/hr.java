package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.axz;

/* compiled from: Twttr */
final class hr implements axz {
    private final Cursor a;

    private hr(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(1);
    }

    public long c() {
        return this.a.getLong(9);
    }
}
