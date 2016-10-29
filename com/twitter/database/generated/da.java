package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avw;

/* compiled from: Twttr */
final class da extends m<avw> {
    final /* synthetic */ cx a;

    @aoa
    public da(cx cxVar, f fVar) {
        this.a = cxVar;
        super(fVar);
    }

    public final String[] a() {
        return cx.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avw> a(Object obj) {
        return new a(new cz(null), (Cursor) obj);
    }
}
