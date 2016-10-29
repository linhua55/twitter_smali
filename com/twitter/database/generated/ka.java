package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.ays;
import defpackage.ayw;
import defpackage.ayx;

/* compiled from: Twttr */
public final class ka extends n<ayx> implements ayw {
    @aoa
    public ka(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(ays.class));
    }

    public final k<ayx> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new kb(contentValues), a(), this.a);
    }
}
