package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.database.schema.a;
import com.twitter.database.schema.e;
import com.twitter.database.schema.f;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public final class u extends n<f> implements e {
    @aoa
    public u(com.twitter.database.internal.f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(a.class));
    }

    public final k<f> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new v(contentValues), a(), this.a);
    }
}
