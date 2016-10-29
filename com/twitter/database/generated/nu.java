package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.database.model.v;
import defpackage.bap;

/* compiled from: Twttr */
final class nu implements bap {
    private final ContentValues a;

    public /* synthetic */ v b(long j) {
        return a(j);
    }

    nu(ContentValues contentValues) {
        this.a = contentValues;
    }

    public bap a(long j) {
        this.a.put("_id", Long.valueOf(j));
        return this;
    }

    public bap c(long j) {
        this.a.put("category_id", Long.valueOf(j));
        return this;
    }
}
