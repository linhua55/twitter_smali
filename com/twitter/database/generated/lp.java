package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azr;

/* compiled from: Twttr */
final class lp extends m<azr> {
    final /* synthetic */ lm a;

    @aoa
    public lp(lm lmVar, f fVar) {
        this.a = lmVar;
        super(fVar);
    }

    public final String[] a() {
        return lm.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azr> a(Object obj) {
        return new a(new lo(null), (Cursor) obj);
    }
}
