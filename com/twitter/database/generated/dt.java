package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awg;

/* compiled from: Twttr */
final class dt implements awg {
    private final Cursor a;

    private dt(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
