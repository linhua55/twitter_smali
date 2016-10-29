package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.schema.d;

/* compiled from: Twttr */
final class t implements d {
    private final Cursor a;

    private t(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public int b() {
        return this.a.getInt(1);
    }
}
