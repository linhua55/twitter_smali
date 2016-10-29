package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.database.schema.h;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class z extends m<h> {
    final /* synthetic */ w a;

    @aoa
    public z(w wVar, f fVar) {
        this.a = wVar;
        super(fVar);
    }

    public final String[] a() {
        return w.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<h> a(Object obj) {
        return new a(new y(null), (Cursor) obj);
    }
}
