package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.auu;

/* compiled from: Twttr */
final class bd implements auu {
    private final Cursor a;

    private bd(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public byte[] b() {
        return this.a.getBlob(2);
    }

    public long c() {
        return this.a.getLong(3);
    }
}
