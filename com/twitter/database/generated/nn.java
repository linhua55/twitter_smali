package com.twitter.database.generated;

import android.database.Cursor;
import ckb;
import com.twitter.util.serialization.m;
import defpackage.bal;

/* compiled from: Twttr */
final class nn implements bal {
    private final Cursor a;

    private nn(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(1);
    }

    public ckb c() {
        if (this.a.isNull(2)) {
            return null;
        }
        return (ckb) m.a(this.a.getBlob(2), ckb.a);
    }

    public String d() {
        return this.a.getString(3);
    }

    public long e() {
        return this.a.getLong(4);
    }

    public boolean f() {
        return this.a.getInt(7) == 1;
    }

    public boolean g() {
        return this.a.getInt(8) == 1;
    }
}
