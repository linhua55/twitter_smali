package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avw;

/* compiled from: Twttr */
final class cz implements avw {
    private final Cursor a;

    private cz(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
