package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.database.model.v;
import defpackage.avl;

/* compiled from: Twttr */
final class ci implements avl {
    private final ContentValues a;

    public /* synthetic */ v b(long j) {
        return a(j);
    }

    ci(ContentValues contentValues) {
        this.a = contentValues;
    }

    public avl a(long j) {
        this.a.put("_id", Long.valueOf(j));
        return this;
    }
}
