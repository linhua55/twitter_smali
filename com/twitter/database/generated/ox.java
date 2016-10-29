package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.bbd;

/* compiled from: Twttr */
final class ox implements bbd {
    private final Cursor a;

    private ox(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
