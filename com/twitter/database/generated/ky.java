package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awk;
import defpackage.awm;
import defpackage.awq;
import defpackage.axa;
import defpackage.azl;

/* compiled from: Twttr */
final class ky implements azl {
    private final Cursor a;
    private final awq b;
    private final avc c;
    private final axa d;
    private final axa e;
    private final awm f;
    private final awk g;

    private ky(Cursor cursor) {
        this.a = cursor;
        this.b = new kz(this);
        this.c = new la(this);
        this.d = new lb(this);
        this.e = new lc(this);
        this.f = new ld(this);
        this.g = new le(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
