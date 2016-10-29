package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.bak;
import defpackage.bau;
import defpackage.bav;

/* compiled from: Twttr */
public final class ob extends n<bav> implements bau {
    @aoa
    public ob(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(bak.class));
    }

    public final k<bav> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new oc(contentValues), a(), this.a);
    }
}
