package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayb;

/* compiled from: Twttr */
final class hw extends m<ayb> {
    final /* synthetic */ ht a;

    @aoa
    public hw(ht htVar, f fVar) {
        this.a = htVar;
        super(fVar);
    }

    public final String[] a() {
        return ht.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayb> a(Object obj) {
        return new a(new hv(null), (Cursor) obj);
    }
}
