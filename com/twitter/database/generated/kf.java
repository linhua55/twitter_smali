package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayz;

/* compiled from: Twttr */
final class kf extends m<ayz> {
    final /* synthetic */ kc a;

    @aoa
    public kf(kc kcVar, f fVar) {
        this.a = kcVar;
        super(fVar);
    }

    public final String[] a() {
        return kc.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayz> a(Object obj) {
        return new a(new ke(null), (Cursor) obj);
    }
}
