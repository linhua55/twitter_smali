package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axg;

/* compiled from: Twttr */
final class gf extends m<axg> {
    final /* synthetic */ gc a;

    @aoa
    public gf(gc gcVar, f fVar) {
        this.a = gcVar;
        super(fVar);
    }

    public final String[] a() {
        return gc.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axg> a(Object obj) {
        return new a(new ge(null), (Cursor) obj);
    }
}
