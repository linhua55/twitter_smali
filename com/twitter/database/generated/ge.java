package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.axg;

/* compiled from: Twttr */
final class ge implements axg {
    private final Cursor a;

    private ge(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
