package com.twitter.database.generated;

import android.content.ContentValues;
import defpackage.bab;

/* compiled from: Twttr */
final class mr implements bab {
    private final ContentValues a;

    mr(ContentValues contentValues) {
        this.a = contentValues;
    }

    public bab a(int i) {
        this.a.put("type", Integer.valueOf(i));
        return this;
    }

    public bab a(long j) {
        this.a.put("last_update", Long.valueOf(j));
        return this;
    }
}
