package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.aza;
import defpackage.azc;
import defpackage.azd;

/* compiled from: Twttr */
public final class kk extends n<azc> implements azd {
    @aoa
    public kk(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(aza.class));
    }

    public final k<azc> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new kl(contentValues), a(), this.a);
    }
}
