package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayt;

/* compiled from: Twttr */
final class jw extends m<ayt> {
    final /* synthetic */ jt a;

    @aoa
    public jw(jt jtVar, f fVar) {
        this.a = jtVar;
        super(fVar);
    }

    public final String[] a() {
        return jt.k;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayt> a(Object obj) {
        return new a(new jv(null), (Cursor) obj);
    }
}
