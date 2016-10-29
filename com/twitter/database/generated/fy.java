package com.twitter.database.generated;

import android.database.Cursor;
import com.twitter.util.serialization.m;
import defpackage.axc;
import java.util.List;

/* compiled from: Twttr */
final class fy implements axc {
    private final Cursor a;

    private fy(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public long b() {
        return this.a.getLong(1);
    }

    public String c() {
        return this.a.getString(2);
    }

    public String d() {
        return this.a.getString(3);
    }

    public String e() {
        return this.a.getString(4);
    }

    public List<String> f() {
        if (this.a.isNull(5)) {
            return null;
        }
        return (List) m.a(this.a.getBlob(5), a.a);
    }

    public List<String> g() {
        if (this.a.isNull(6)) {
            return null;
        }
        return (List) m.a(this.a.getBlob(6), a.a);
    }
}
