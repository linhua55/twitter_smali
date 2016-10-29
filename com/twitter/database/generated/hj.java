package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.axs;
import defpackage.axu;
import defpackage.axv;

/* compiled from: Twttr */
public final class hj extends n<axu> implements axv {
    @aoa
    public hj(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(axs.class));
    }

    public final k<axu> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new hk(contentValues), a(), this.a);
    }
}
