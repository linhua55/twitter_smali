package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.auo;

/* compiled from: Twttr */
final class at extends m<auo> {
    final /* synthetic */ aq a;

    @aoa
    public at(aq aqVar, f fVar) {
        this.a = aqVar;
        super(fVar);
    }

    public final String[] a() {
        return aq.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<auo> a(Object obj) {
        return new a(new as(null), (Cursor) obj);
    }
}
