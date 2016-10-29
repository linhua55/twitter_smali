package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avu;

/* compiled from: Twttr */
final class cw extends m<avu> {
    final /* synthetic */ ct a;

    @aoa
    public cw(ct ctVar, f fVar) {
        this.a = ctVar;
        super(fVar);
    }

    public final String[] a() {
        return ct.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avu> a(Object obj) {
        return new a(new cv(null), (Cursor) obj);
    }
}
