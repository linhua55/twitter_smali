package com.twitter.android;

import android.database.Cursor;
import defpackage.cgt;
import defpackage.chg;

/* compiled from: Twttr */
public class s extends cgt<r> {
    final Cursor a;

    public s(Cursor cursor) {
        super(cursor, new chg(t.a));
        this.a = cursor;
    }

    public boolean r_() {
        return this.a.moveToLast() && this.a.getInt(14) == 1;
    }
}
