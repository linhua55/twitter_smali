package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayf;

/* compiled from: Twttr */
final class io extends m<ayf> {
    final /* synthetic */ ib a;

    @aoa
    public io(ib ibVar, f fVar) {
        this.a = ibVar;
        super(fVar);
    }

    public final String[] a() {
        return ib.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayf> a(Object obj) {
        return new a(new id(null), (Cursor) obj);
    }
}
