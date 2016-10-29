package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.bbf;

/* compiled from: Twttr */
final class pb implements bbf {
    private final Cursor a;

    private pb(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
