package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.database.schema.n;

/* compiled from: Twttr */
final class ak implements n {
    private final Cursor a;

    private ak(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public int b() {
        return this.a.getInt(1);
    }

    public String c() {
        return this.a.getString(3);
    }

    public int d() {
        return this.a.getInt(4);
    }
}
