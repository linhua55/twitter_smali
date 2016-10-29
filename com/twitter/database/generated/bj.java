package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.util.serialization.m;
import defpackage.auy;
import java.util.List;

/* compiled from: Twttr */
final class bj implements auy {
    private final Cursor a;

    private bj(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(1);
    }

    public String c() {
        return this.a.getString(3);
    }

    public int d() {
        return this.a.getInt(4);
    }

    public String e() {
        return this.a.getString(5);
    }

    public List<Long> f() {
        return (List) m.a(this.a.getBlob(6), a.c);
    }

    public boolean g() {
        return this.a.getInt(7) == 1;
    }
}
