package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awe;
import defpackage.axa;
import defpackage.axk;

/* compiled from: Twttr */
final class gv implements axk {
    private final Cursor a;
    private final awe b;
    private final axa c;

    private gv(Cursor cursor) {
        this.a = cursor;
        this.b = new gw(this);
        this.c = new gx(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
