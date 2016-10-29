package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.aut;
import defpackage.auv;
import defpackage.auw;

/* compiled from: Twttr */
public final class bf extends n<auw> implements auv {
    @aoa
    public bf(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(aut.class));
    }

    public final k<auw> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new bg(contentValues), a(), this.a);
    }
}
