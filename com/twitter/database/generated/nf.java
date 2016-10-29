package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bah;

/* compiled from: Twttr */
final class nf extends m<bah> {
    final /* synthetic */ na a;

    @aoa
    public nf(na naVar, f fVar) {
        this.a = naVar;
        super(fVar);
    }

    public final String[] a() {
        return na.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bah> a(Object obj) {
        return new a(new nc(null), (Cursor) obj);
    }
}
