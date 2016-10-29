package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.baf;

/* compiled from: Twttr */
final class mz extends m<baf> {
    final /* synthetic */ mw a;

    @aoa
    public mz(mw mwVar, f fVar) {
        this.a = mwVar;
        super(fVar);
    }

    public final String[] a() {
        return mw.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<baf> a(Object obj) {
        return new a(new my(null), (Cursor) obj);
    }
}
