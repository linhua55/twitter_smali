package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.auq;

/* compiled from: Twttr */
final class ay extends m<auq> {
    final /* synthetic */ au a;

    @aoa
    public ay(au auVar, f fVar) {
        this.a = auVar;
        super(fVar);
    }

    public final String[] a() {
        return au.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<auq> a(Object obj) {
        return new a(new aw(null), (Cursor) obj);
    }
}
