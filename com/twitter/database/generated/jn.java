package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.aym;
import defpackage.ayo;
import defpackage.ayp;

/* compiled from: Twttr */
public final class jn extends n<ayo> implements ayp {
    @aoa
    public jn(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(aym.class));
    }

    public final k<ayo> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new jo(contentValues), a(), this.a);
    }
}
