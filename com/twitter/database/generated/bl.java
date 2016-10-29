package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.aux;
import defpackage.auz;
import defpackage.ava;

/* compiled from: Twttr */
public final class bl extends n<ava> implements auz {
    @aoa
    public bl(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(aux.class));
    }

    public final k<ava> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new bm(contentValues), a(), this.a);
    }
}
