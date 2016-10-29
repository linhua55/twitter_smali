package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.aun;
import defpackage.aur;
import defpackage.aus;

/* compiled from: Twttr */
public final class az extends n<aus> implements aur {
    @aoa
    public az(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(aun.class));
    }

    public final k<aus> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new ba(contentValues), a(), this.a);
    }
}
