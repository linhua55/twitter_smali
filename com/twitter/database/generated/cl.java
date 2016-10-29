package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avo;

/* compiled from: Twttr */
final class cl implements avo {
    private final Cursor a;

    private cl(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(1);
    }

    public long c() {
        return this.a.getLong(2);
    }

    public String d() {
        return this.a.getString(3);
    }

    public String e() {
        return this.a.getString(4);
    }

    public String f() {
        return this.a.getString(5);
    }
}
