package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.lru.schema.f;

/* compiled from: Twttr */
final class j implements f {
    private final Cursor a;

    private j(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public byte[] b() {
        return this.a.getBlob(6);
    }

    public long c() {
        return this.a.getLong(7);
    }
}
