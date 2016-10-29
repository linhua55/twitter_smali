package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.auy;

/* compiled from: Twttr */
final class bk extends m<auy> {
    final /* synthetic */ bh a;

    @aoa
    public bk(bh bhVar, f fVar) {
        this.a = bhVar;
        super(fVar);
    }

    public final String[] a() {
        return bh.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<auy> a(Object obj) {
        return new a(new bj(null), (Cursor) obj);
    }
}
