package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.aum;
import defpackage.auq;

/* compiled from: Twttr */
final class aw implements auq {
    private final Cursor a;
    private final aum b;

    private aw(Cursor cursor) {
        this.a = cursor;
        this.b = new ax(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
