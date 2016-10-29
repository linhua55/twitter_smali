package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.aze;
import defpackage.azg;
import defpackage.azh;

/* compiled from: Twttr */
public final class kq extends n<azh> implements azg {
    @aoa
    public kq(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(aze.class));
    }

    public final k<azh> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new kr(contentValues), a(), this.a);
    }
}
