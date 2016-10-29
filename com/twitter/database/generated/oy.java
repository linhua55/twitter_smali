package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbd;

/* compiled from: Twttr */
final class oy extends m<bbd> {
    final /* synthetic */ ov a;

    @aoa
    public oy(ov ovVar, f fVar) {
        this.a = ovVar;
        super(fVar);
    }

    public final String[] a() {
        return ov.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bbd> a(Object obj) {
        return new a(new ox(null), (Cursor) obj);
    }
}
