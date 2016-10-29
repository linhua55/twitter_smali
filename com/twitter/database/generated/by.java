package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avg;

/* compiled from: Twttr */
final class by extends m<avg> {
    final /* synthetic */ bv a;

    @aoa
    public by(bv bvVar, f fVar) {
        this.a = bvVar;
        super(fVar);
    }

    public final String[] a() {
        return bv.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avg> a(Object obj) {
        return new a(new bx(null), (Cursor) obj);
    }
}
