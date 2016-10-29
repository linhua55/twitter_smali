package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ave;

/* compiled from: Twttr */
final class bu extends m<ave> {
    final /* synthetic */ br a;

    @aoa
    public bu(br brVar, f fVar) {
        this.a = brVar;
        super(fVar);
    }

    public final String[] a() {
        return br.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ave> a(Object obj) {
        return new a(new bt(null), (Cursor) obj);
    }
}
