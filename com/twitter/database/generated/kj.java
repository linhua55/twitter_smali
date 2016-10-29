package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azb;

/* compiled from: Twttr */
final class kj extends m<azb> {
    final /* synthetic */ kg a;

    @aoa
    public kj(kg kgVar, f fVar) {
        this.a = kgVar;
        super(fVar);
    }

    public final String[] a() {
        return kg.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azb> a(Object obj) {
        return new a(new ki(null), (Cursor) obj);
    }
}
