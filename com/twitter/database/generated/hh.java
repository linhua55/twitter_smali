package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.axt;

/* compiled from: Twttr */
final class hh implements axt {
    private final Cursor a;

    private hh(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public byte[] b() {
        return this.a.getBlob(2);
    }
}
