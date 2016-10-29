package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azj;

/* compiled from: Twttr */
final class kv extends m<azj> {
    final /* synthetic */ ks a;

    @aoa
    public kv(ks ksVar, f fVar) {
        this.a = ksVar;
        super(fVar);
    }

    public final String[] a() {
        return ks.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azj> a(Object obj) {
        return new a(new ku(null), (Cursor) obj);
    }
}
