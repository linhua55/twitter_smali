package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.lru.schema.b;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class e extends m<b> {
    final /* synthetic */ b a;

    @aoa
    public e(b bVar, f fVar) {
        this.a = bVar;
        super(fVar);
    }

    public final String[] a() {
        return b.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<b> a(Object obj) {
        return new a(new d(null), (Cursor) obj);
    }
}
