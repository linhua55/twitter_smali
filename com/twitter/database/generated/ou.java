package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbb;

/* compiled from: Twttr */
final class ou extends m<bbb> {
    final /* synthetic */ or a;

    @aoa
    public ou(or orVar, f fVar) {
        this.a = orVar;
        super(fVar);
    }

    public final String[] a() {
        return or.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bbb> a(Object obj) {
        return new a(new ot(null), (Cursor) obj);
    }
}
