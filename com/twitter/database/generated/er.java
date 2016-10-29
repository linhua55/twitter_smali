package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awm;

/* compiled from: Twttr */
final class er extends m<awm> {
    final /* synthetic */ eo a;

    @aoa
    public er(eo eoVar, f fVar) {
        this.a = eoVar;
        super(fVar);
    }

    public final String[] a() {
        return eo.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awm> a(Object obj) {
        return new a(new eq(null), (Cursor) obj);
    }
}
