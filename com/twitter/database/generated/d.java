package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.lru.schema.b;

/* compiled from: Twttr */
final class d implements b {
    private final Cursor a;

    private d(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }
}
