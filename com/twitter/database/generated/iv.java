package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awk;
import defpackage.awm;
import defpackage.awq;
import defpackage.axa;
import defpackage.axt;
import defpackage.axx;
import defpackage.ayj;

/* compiled from: Twttr */
final class iv implements ayj {
    private final Cursor a;
    private final axx b;
    private final awq c;
    private final avc d;
    private final axa e;
    private final axa f;
    private final awm g;
    private final awk h;
    private final axt i;

    private iv(Cursor cursor) {
        this.a = cursor;
        this.b = new iw(this);
        this.c = new ix(this);
        this.d = new iy(this);
        this.e = new iz(this);
        this.f = new ja(this);
        this.g = new jb(this);
        this.h = new jc(this);
        this.i = new jd(this);
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
