package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awg;

/* compiled from: Twttr */
final class du extends m<awg> {
    final /* synthetic */ dr a;

    @aoa
    public du(dr drVar, f fVar) {
        this.a = drVar;
        super(fVar);
    }

    public final String[] a() {
        return dr.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awg> a(Object obj) {
        return new a(new dt(null), (Cursor) obj);
    }
}