package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.awy;
import defpackage.axa;
import defpackage.bah;

/* compiled from: Twttr */
final class nc implements bah {
    private final Cursor a;
    private final axa b;
    private final awy c;

    private nc(Cursor cursor) {
        this.a = cursor;
        this.b = new nd(this);
        this.c = new ne(this);
    }

    public long a() {
        return this.a.getLong(0);
    }
}
