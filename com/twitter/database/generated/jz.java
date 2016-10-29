package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayv;

/* compiled from: Twttr */
final class jz implements ayv {
    private final Cursor a;

    private jz(Cursor cursor) {
        this.a = cursor;
    }

    public int a() {
        return this.a.getInt(0);
    }
}
