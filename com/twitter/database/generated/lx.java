package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azv;

/* compiled from: Twttr */
final class lx extends m<azv> {
    final /* synthetic */ lu a;

    @aoa
    public lx(lu luVar, f fVar) {
        this.a = luVar;
        super(fVar);
    }

    public final String[] a() {
        return lu.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azv> a(Object obj) {
        return new a(new lw(null), (Cursor) obj);
    }
}
