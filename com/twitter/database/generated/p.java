package com.twitter.database.generated;

import android.database.Cursor;
import cgf;
import cni;
import com.twitter.database.schema.b;
import com.twitter.util.serialization.m;
import java.util.List;

/* compiled from: Twttr */
final class p implements b {
    private final Cursor a;

    private p(Cursor cursor) {
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

    public cni d() {
        if (this.a.isNull(5)) {
            return null;
        }
        return (cni) m.a(this.a.getBlob(5), cni.a);
    }

    public byte[] e() {
        return this.a.getBlob(6);
    }

    public byte[] f() {
        return this.a.getBlob(7);
    }

    public List<Long> g() {
        if (this.a.isNull(8)) {
            return null;
        }
        return (List) m.a(this.a.getBlob(8), a.c);
    }

    public long h() {
        return this.a.getLong(9);
    }

    public byte[] i() {
        return this.a.getBlob(10);
    }

    public String j() {
        return this.a.getString(11);
    }

    public cgf k() {
        if (this.a.isNull(12)) {
            return null;
        }
        return (cgf) m.a(this.a.getBlob(12), cgf.a);
    }

    public boolean l() {
        return this.a.getInt(13) == 1;
    }
}
