package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avs;

/* compiled from: Twttr */
final class cr implements avs {
    private final Cursor a;

    private cr(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
