package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azt;

/* compiled from: Twttr */
final class lt extends m<azt> {
    final /* synthetic */ lq a;

    @aoa
    public lt(lq lqVar, f fVar) {
        this.a = lqVar;
        super(fVar);
    }

    public final String[] a() {
        return lq.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azt> a(Object obj) {
        return new a(new ls(null), (Cursor) obj);
    }
}
