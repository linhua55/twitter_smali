package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awe;

/* compiled from: Twttr */
final class dq extends m<awe> {
    final /* synthetic */ dn a;

    @aoa
    public dq(dn dnVar, f fVar) {
        this.a = dnVar;
        super(fVar);
    }

    public final String[] a() {
        return dn.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awe> a(Object obj) {
        return new a(new dp(null), (Cursor) obj);
    }
}
