package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.axb;
import defpackage.axd;
import defpackage.axe;

/* compiled from: Twttr */
public final class ga extends n<axe> implements axd {
    @aoa
    public ga(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(axb.class));
    }

    public final k<axe> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new gb(contentValues), a(), this.a);
    }
}
