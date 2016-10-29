package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axc;

/* compiled from: Twttr */
final class fz extends m<axc> {
    final /* synthetic */ fw a;

    @aoa
    public fz(fw fwVar, f fVar) {
        this.a = fwVar;
        super(fVar);
    }

    public final String[] a() {
        return fw.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axc> a(Object obj) {
        return new a(new fy(null), (Cursor) obj);
    }
}
