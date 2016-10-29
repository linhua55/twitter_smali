package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awi;

/* compiled from: Twttr */
final class ee extends m<awi> {
    final /* synthetic */ dv a;

    @aoa
    public ee(dv dvVar, f fVar) {
        this.a = dvVar;
        super(fVar);
    }

    public final String[] a() {
        return dv.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awi> a(Object obj) {
        return new a(new dx(null), (Cursor) obj);
    }
}
