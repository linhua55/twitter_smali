package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.bad;
import defpackage.baj;

/* compiled from: Twttr */
final class ni implements baj {
    private final Cursor a;
    private final bad b;

    private ni(Cursor cursor) {
        this.a = cursor;
        this.b = new nj(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
