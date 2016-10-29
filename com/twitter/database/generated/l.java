package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.lru.schema.e;
import com.twitter.database.lru.schema.g;
import com.twitter.database.lru.schema.h;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public final class l extends n<h> implements g {
    @aoa
    public l(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(e.class));
    }

    public final k<h> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new m(contentValues), a(), this.a);
    }
}
