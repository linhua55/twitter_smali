package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.azf;

/* compiled from: Twttr */
final class ko implements azf {
    private final Cursor a;

    private ko(Cursor cursor) {
        this.a = cursor;
    }

    public String a() {
        return this.a.getString(0);
    }

    public String b() {
        return this.a.getString(1);
    }

    public boolean c() {
        return this.a.getInt(2) == 1;
    }

    public long d() {
        return this.a.getLong(3);
    }

    public int e() {
        return this.a.getInt(4);
    }

    public String f() {
        return this.a.getString(5);
    }

    public String g() {
        return this.a.getString(6);
    }

    public String h() {
        return this.a.getString(7);
    }

    public String i() {
        return this.a.getString(8);
    }

    public String j() {
        return this.a.getString(9);
    }

    public String k() {
        return this.a.getString(10);
    }

    public String l() {
        return this.a.getString(11);
    }

    public String m() {
        return this.a.getString(12);
    }

    public String n() {
        return this.a.getString(13);
    }
}
