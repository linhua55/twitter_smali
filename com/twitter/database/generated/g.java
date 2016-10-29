package com.twitter.database.generated;

import android.content.ContentValues;
import com.twitter.database.lru.schema.c;

/* compiled from: Twttr */
final class g implements c {
    private final ContentValues a;

    g(ContentValues contentValues) {
        this.a = contentValues;
    }

    public c a(String str) {
        this.a.put("category_name", str);
        return this;
    }
}
