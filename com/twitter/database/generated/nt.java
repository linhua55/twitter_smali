package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.bam;
import defpackage.bao;
import defpackage.bap;

/* compiled from: Twttr */
public final class nt extends n<bap> implements bao {
    @aoa
    public nt(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(bam.class));
    }

    public final k<bap> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new nu(contentValues), a(), this.a);
    }
}
