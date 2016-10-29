package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azl;

/* compiled from: Twttr */
final class lf extends m<azl> {
    final /* synthetic */ kw a;

    @aoa
    public lf(kw kwVar, f fVar) {
        this.a = kwVar;
        super(fVar);
    }

    public final String[] a() {
        return kw.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azl> a(Object obj) {
        return new a(new ky(null), (Cursor) obj);
    }
}
