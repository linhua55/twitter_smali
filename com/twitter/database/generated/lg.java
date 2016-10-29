package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.azi;
import defpackage.azm;
import defpackage.azn;

/* compiled from: Twttr */
public final class lg extends n<azn> implements azm {
    @aoa
    public lg(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(azi.class));
    }

    public final k<azn> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new lh(contentValues), a(), this.a);
    }
}
