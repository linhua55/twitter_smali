package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awg;
import defpackage.awm;
import defpackage.awq;
import defpackage.aws;
import defpackage.axa;
import defpackage.bbd;
import defpackage.bbh;

/* compiled from: Twttr */
final class pf implements bbh {
    private final Cursor a;
    private final awq b;
    private final awg c;
    private final avc d;
    private final axa e;
    private final axa f;
    private final axa g;
    private final aws h;
    private final bbd i;
    private final awm j;

    private pf(Cursor cursor) {
        this.a = cursor;
        this.b = new pg(this);
        this.c = new ph(this);
        this.d = new pi(this);
        this.e = new pj(this);
        this.f = new pk(this);
        this.g = new pl(this);
        this.h = new pm(this);
        this.i = new pn(this);
        this.j = new po(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
