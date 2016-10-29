package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.database.schema.b;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class q extends m<b> {
    final /* synthetic */ n a;

    @aoa
    public q(n nVar, f fVar) {
        this.a = nVar;
        super(fVar);
    }

    public final String[] a() {
        return n.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<b> a(Object obj) {
        return new a(new p(null), (Cursor) obj);
    }
}
