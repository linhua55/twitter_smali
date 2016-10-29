package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.baq;
import defpackage.bar;
import defpackage.bas;

/* compiled from: Twttr */
public final class nv extends n<bar> implements baq {
    @aoa
    public nv(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(bas.class));
    }

    public final k<bar> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new nw(contentValues), a(), this.a);
    }
}
