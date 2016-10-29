package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.aww;
import defpackage.awy;
import defpackage.axa;

/* compiled from: Twttr */
final class fk implements aww {
    private final Cursor a;
    private final axa b;
    private final awy c;

    private fk(Cursor cursor) {
        this.a = cursor;
        this.b = new fl(this);
        this.c = new fm(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
