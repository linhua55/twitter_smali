package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.auw;

/* compiled from: Twttr */
final class bg implements auw {
    private final ContentValues a;

    bg(ContentValues contentValues) {
        this.a = contentValues;
    }

    public auw a(long j) {
        this.a.put("user_id", Long.valueOf(j));
        return this;
    }

    public auw a(byte[] bArr) {
        this.a.put("hash_value", bArr);
        return this;
    }

    public auw b(long j) {
        this.a.put("remote_id", Long.valueOf(j));
        return this;
    }
}
