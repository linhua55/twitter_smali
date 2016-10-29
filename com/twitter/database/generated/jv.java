package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayt;

/* compiled from: Twttr */
final class jv implements ayt {
    private final Cursor a;

    private jv(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public int b() {
        return this.a.getInt(1);
    }

    public int c() {
        return this.a.getInt(2);
    }

    public String d() {
        return this.a.getString(3);
    }

    public String e() {
        return this.a.getString(4);
    }

    public long f() {
        return this.a.getLong(5);
    }

    public String g() {
        return this.a.getString(6);
    }

    public String h() {
        return this.a.getString(7);
    }

    public byte[] i() {
        return this.a.getBlob(8);
    }
}
