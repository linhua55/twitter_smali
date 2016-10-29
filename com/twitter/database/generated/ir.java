package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayh;

/* compiled from: Twttr */
final class ir implements ayh {
    private final Cursor a;

    private ir(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public String b() {
        return this.a.getString(2);
    }

    public Long c() {
        if (this.a.isNull(5)) {
            return null;
        }
        return Long.valueOf(this.a.getLong(5));
    }

    public long d() {
        return this.a.getLong(6);
    }
}
