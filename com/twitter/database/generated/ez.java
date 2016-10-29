package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awq;

/* compiled from: Twttr */
final class ez extends m<awq> {
    final /* synthetic */ ew a;

    @aoa
    public ez(ew ewVar, f fVar) {
        this.a = ewVar;
        super(fVar);
    }

    public final String[] a() {
        return ew.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awq> a(Object obj) {
        return new a(new ey(null), (Cursor) obj);
    }
}
