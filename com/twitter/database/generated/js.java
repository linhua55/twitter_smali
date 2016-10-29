package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayr;

/* compiled from: Twttr */
final class js extends m<ayr> {
    final /* synthetic */ jp a;

    @aoa
    public js(jp jpVar, f fVar) {
        this.a = jpVar;
        super(fVar);
    }

    public final String[] a() {
        return jp.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayr> a(Object obj) {
        return new a(new jr(null), (Cursor) obj);
    }
}
