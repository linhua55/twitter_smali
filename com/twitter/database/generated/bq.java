package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avc;

/* compiled from: Twttr */
final class bq extends m<avc> {
    final /* synthetic */ bn a;

    @aoa
    public bq(bn bnVar, f fVar) {
        this.a = bnVar;
        super(fVar);
    }

    public final String[] a() {
        return bn.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avc> a(Object obj) {
        return new a(new bp(null), (Cursor) obj);
    }
}
