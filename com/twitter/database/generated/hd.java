package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.axl;
import defpackage.axn;
import defpackage.axo;

/* compiled from: Twttr */
public final class hd extends n<axo> implements axn {
    @aoa
    public hd(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(axl.class));
    }

    public final k<axo> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new he(contentValues), a(), this.a);
    }
}
