package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avy;

/* compiled from: Twttr */
final class de extends m<avy> {
    final /* synthetic */ db a;

    @aoa
    public de(db dbVar, f fVar) {
        this.a = dbVar;
        super(fVar);
    }

    public final String[] a() {
        return db.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avy> a(Object obj) {
        return new a(new dd(null), (Cursor) obj);
    }
}
