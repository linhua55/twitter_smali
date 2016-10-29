package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awy;

/* compiled from: Twttr */
final class fr extends m<awy> {
    final /* synthetic */ fo a;

    @aoa
    public fr(fo foVar, f fVar) {
        this.a = foVar;
        super(fVar);
    }

    public final String[] a() {
        return fo.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awy> a(Object obj) {
        return new a(new fq(null), (Cursor) obj);
    }
}
