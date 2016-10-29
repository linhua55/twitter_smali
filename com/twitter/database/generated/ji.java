package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayl;

/* compiled from: Twttr */
final class ji extends m<ayl> {
    final /* synthetic */ jf a;

    @aoa
    public ji(jf jfVar, f fVar) {
        this.a = jfVar;
        super(fVar);
    }

    public final String[] a() {
        return jf.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayl> a(Object obj) {
        return new a(new jh(null), (Cursor) obj);
    }
}
