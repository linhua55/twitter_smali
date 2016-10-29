package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azb;

/* compiled from: Twttr */
final class ki implements azb {
    private final Cursor a;

    private ki(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public byte[] b() {
        return this.a.getBlob(2);
    }
}
