package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.schema.j;

/* compiled from: Twttr */
final class ac implements j {
    private final Cursor a;

    private ac(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public int bd_() {
        return this.a.getInt(2);
    }

    public int c() {
        return this.a.getInt(3);
    }
}
