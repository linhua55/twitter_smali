package com.twitter.database.generated;

import android.content.ContentValues;
import aoa;
import com.twitter.database.internal.b;
import com.twitter.database.internal.f;
import com.twitter.database.internal.n;
import com.twitter.database.internal.o;
import com.twitter.database.model.k;
import com.twitter.util.object.ObjectUtils;
import defpackage.avj;
import defpackage.avl;
import defpackage.avm;

/* compiled from: Twttr */
public final class ch extends n<avl> implements avm {
    @aoa
    public ch(f fVar) {
        super(fVar);
    }

    protected final <T extends o> T a() {
        return (o) ObjectUtils.a(this.a.a(avj.class));
    }

    public final k<avl> b() {
        ContentValues contentValues = new ContentValues();
        return new b(contentValues, new ci(contentValues), a(), this.a);
    }
}
