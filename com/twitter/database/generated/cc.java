package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avi;

/* compiled from: Twttr */
final class cc extends m<avi> {
    final /* synthetic */ bz a;

    @aoa
    public cc(bz bzVar, f fVar) {
        this.a = bzVar;
        super(fVar);
    }

    public final String[] a() {
        return bz.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avi> a(Object obj) {
        return new a(new cb(null), (Cursor) obj);
    }
}
