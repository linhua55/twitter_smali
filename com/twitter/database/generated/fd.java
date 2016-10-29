package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.aws;

/* compiled from: Twttr */
final class fd extends m<aws> {
    final /* synthetic */ fa a;

    @aoa
    public fd(fa faVar, f fVar) {
        this.a = faVar;
        super(fVar);
    }

    public final String[] a() {
        return fa.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<aws> a(Object obj) {
        return new a(new fc(null), (Cursor) obj);
    }
}
