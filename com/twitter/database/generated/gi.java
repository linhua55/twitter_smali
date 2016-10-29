package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awk;
import defpackage.awm;
import defpackage.awq;
import defpackage.aww;
import defpackage.awy;
import defpackage.axa;
import defpackage.axi;

/* compiled from: Twttr */
final class gi implements axi {
    private final Cursor a;
    private final awq b;
    private final avc c;
    private final axa d;
    private final axa e;
    private final awm f;
    private final awk g;
    private final axa h;
    private final awy i;
    private final aww j;

    private gi(Cursor cursor) {
        this.a = cursor;
        this.b = new gj(this);
        this.c = new gk(this);
        this.d = new gl(this);
        this.e = new gm(this);
        this.f = new gn(this);
        this.g = new go(this);
        this.h = new gp(this);
        this.i = new gq(this);
        this.j = new gr(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
