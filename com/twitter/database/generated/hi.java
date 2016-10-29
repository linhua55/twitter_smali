package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axt;

/* compiled from: Twttr */
final class hi extends m<axt> {
    final /* synthetic */ hf a;

    @aoa
    public hi(hf hfVar, f fVar) {
        this.a = hfVar;
        super(fVar);
    }

    public final String[] a() {
        return hf.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axt> a(Object obj) {
        return new a(new hh(null), (Cursor) obj);
    }
}
