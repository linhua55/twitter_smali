package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awc;

/* compiled from: Twttr */
final class dm extends m<awc> {
    final /* synthetic */ dj a;

    @aoa
    public dm(dj djVar, f fVar) {
        this.a = djVar;
        super(fVar);
    }

    public final String[] a() {
        return dj.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awc> a(Object obj) {
        return new a(new dl(null), (Cursor) obj);
    }
}
