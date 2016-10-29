package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axi;

/* compiled from: Twttr */
final class gs extends m<axi> {
    final /* synthetic */ gg a;

    @aoa
    public gs(gg ggVar, f fVar) {
        this.a = ggVar;
        super(fVar);
    }

    public final String[] a() {
        return gg.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axi> a(Object obj) {
        return new a(new gi(null), (Cursor) obj);
    }
}
