package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axk;

/* compiled from: Twttr */
final class gy extends m<axk> {
    final /* synthetic */ gt a;

    @aoa
    public gy(gt gtVar, f fVar) {
        this.a = gtVar;
        super(fVar);
    }

    public final String[] a() {
        return gt.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axk> a(Object obj) {
        return new a(new gv(null), (Cursor) obj);
    }
}
