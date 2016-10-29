package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avs;

/* compiled from: Twttr */
final class cs extends m<avs> {
    final /* synthetic */ cp a;

    @aoa
    public cs(cp cpVar, f fVar) {
        this.a = cpVar;
        super(fVar);
    }

    public final String[] a() {
        return cp.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avs> a(Object obj) {
        return new a(new cr(null), (Cursor) obj);
    }
}
