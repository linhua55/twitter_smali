package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azt;

/* compiled from: Twttr */
final class ls implements azt {
    private final Cursor a;

    private ls(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
