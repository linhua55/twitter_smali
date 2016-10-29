package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.aws;

/* compiled from: Twttr */
final class fc implements aws {
    private final Cursor a;

    private fc(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
