package com.twitter.database.generated;

import android.database.Cursor;
import ckl;
import com.twitter.util.serialization.m;
import defpackage.ban;
import defpackage.bax;

/* compiled from: Twttr */
final class of implements bax {
    private final Cursor a;
    private final ban b;

    private of(Cursor cursor) {
        this.a = cursor;
        this.b = new og(this);
    }

    public long a() {
        return this.a.getLong(0);
    }

    public String b() {
        return this.a.getString(1);
    }

    public String c() {
        return this.a.getString(2);
    }

    public long d() {
        return this.a.getLong(3);
    }

    public long e() {
        return this.a.getLong(4);
    }

    public long f() {
        return this.a.getLong(5);
    }

    public long g() {
        return this.a.getLong(6);
    }

    public long h() {
        return this.a.getLong(7);
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

    public long l() {
        return this.a.getLong(11);
    }

    public long m() {
        return this.a.getLong(12);
    }

    public long n() {
        return this.a.getLong(13);
    }

    public boolean o() {
        return this.a.getInt(14) == 1;
    }

    public ckl p() {
        return (ckl) m.a(this.a.getBlob(15), ckl.a);
    }
}
