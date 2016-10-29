package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.azy;
import defpackage.baa;
import defpackage.bab;

/* compiled from: Twttr */
public final class mq extends n<bab> implements baa {
    @aoa
    public mq(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(azy.class));
    }

    public final k<bab> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new mr(contentValues), a(), this.a);
    }
}
