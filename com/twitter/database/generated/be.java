package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.auu;

/* compiled from: Twttr */
final class be extends m<auu> {
    final /* synthetic */ bb a;

    @aoa
    public be(bb bbVar, f fVar) {
        this.a = bbVar;
        super(fVar);
    }

    public final String[] a() {
        return bb.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<auu> a(Object obj) {
        return new a(new bd(null), (Cursor) obj);
    }
}
