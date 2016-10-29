package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.lru.schema.f;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class k extends m<f> {
    final /* synthetic */ h a;

    @aoa
    public k(h hVar, com.twitter.database.internal.f fVar) {
        this.a = hVar;
        super(fVar);
    }

    public final String[] a() {
        return h.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<f> a(Object obj) {
        return new a(new j(null), (Cursor) obj);
    }
}
