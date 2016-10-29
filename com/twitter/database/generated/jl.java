package com.twitter.database.generated;

import android.database.Cursor;
import defpackage.ayn;

/* compiled from: Twttr */
final class jl implements ayn {
    private final Cursor a;

    private jl(Cursor cursor) {
        this.a = cursor;
    }

    public long a() {
        return this.a.getLong(0);
    }

    public byte[] b() {
        return this.a.getBlob(2);
    }
}
