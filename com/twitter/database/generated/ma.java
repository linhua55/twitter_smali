package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awk;
import defpackage.awm;
import defpackage.awq;
import defpackage.aws;
import defpackage.awu;
import defpackage.awy;
import defpackage.axa;
import defpackage.azx;

/* compiled from: Twttr */
final class ma implements azx {
    private final Cursor a;
    private final awq b;
    private final avc c;
    private final axa d;
    private final axa e;
    private final awm f;
    private final awk g;
    private final aws h;
    private final awu i;
    private final awy j;
    private final axa k;

    private ma(Cursor cursor) {
        this.a = cursor;
        this.b = new mb(this);
        this.c = new md(this);
        this.d = new me(this);
        this.e = new mf(this);
        this.f = new mg(this);
        this.g = new mh(this);
        this.h = new mi(this);
        this.i = new mj(this);
        this.j = new mk(this);
        this.k = new mc(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
