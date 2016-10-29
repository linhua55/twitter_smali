package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axx;

/* compiled from: Twttr */
final class ho extends m<axx> {
    final /* synthetic */ hl a;

    @aoa
    public ho(hl hlVar, f fVar) {
        this.a = hlVar;
        super(fVar);
    }

    public final String[] a() {
        return hl.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axx> a(Object obj) {
        return new a(new hn(null), (Cursor) obj);
    }
}
