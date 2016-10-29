package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awa;

/* compiled from: Twttr */
final class dh implements awa {
    private final Cursor a;

    private dh(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
