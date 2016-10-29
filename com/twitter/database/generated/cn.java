package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.avn;
import defpackage.avp;
import defpackage.avq;

/* compiled from: Twttr */
public final class cn extends n<avq> implements avp {
    @aoa
    public cn(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(avn.class));
    }

    public final k<avq> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new co(contentValues), a(), this.a);
    }
}
