package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awo;

/* compiled from: Twttr */
final class ev extends m<awo> {
    final /* synthetic */ es a;

    @aoa
    public ev(es esVar, f fVar) {
        this.a = esVar;
        super(fVar);
    }

    public final String[] a() {
        return es.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awo> a(Object obj) {
        return new a(new eu(null), (Cursor) obj);
    }
}
