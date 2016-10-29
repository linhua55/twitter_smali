package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.lru.schema.a;
import com.twitter.database.lru.schema.c;
import com.twitter.database.lru.schema.d;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public final class f extends n<c> implements d {
    @aoa
    public f(com.twitter.database.internal.f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(a.class));
    }

    public final k<c> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new g(contentValues), a(), this.a);
    }
}
