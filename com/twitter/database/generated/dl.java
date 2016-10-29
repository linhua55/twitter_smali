package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awc;

/* compiled from: Twttr */
final class dl implements awc {
    private final Cursor a;

    private dl(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
