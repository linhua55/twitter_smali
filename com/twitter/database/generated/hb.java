package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.model.core.MediaEntity;
import com.twitter.util.serialization.m;
import defpackage.axm;

/* compiled from: Twttr */
final class hb implements axm {
    private final Cursor a;

    private hb(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public String b() {
        return this.a.getString(1);
    }

    public long c() {
        return this.a.getLong(2);
    }

    public long d() {
        return this.a.getLong(3);
    }

    public String e() {
        return this.a.getString(4);
    }

    public String f() {
        return this.a.getString(5);
    }

    public MediaEntity g() {
        return (MediaEntity) m.a(this.a.getBlob(6), MediaEntity.a);
    }
}
