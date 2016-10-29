package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ave;

/* compiled from: Twttr */
final class bt implements ave {
    private final Cursor a;

    private bt(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
