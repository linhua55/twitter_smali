package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.avc;
import defpackage.awk;
import defpackage.awm;
import defpackage.awq;
import defpackage.axa;

/* compiled from: Twttr */
final class eh implements awk {
    private final Cursor a;
    private final awq b;
    private final avc c;
    private final axa d;
    private final axa e;
    private final awm f;

    private eh(Cursor cursor) {
        this.a = cursor;
        this.b = new ei(this);
        this.c = new ej(this);
        this.d = new ek(this);
        this.e = new el(this);
        this.f = new em(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
