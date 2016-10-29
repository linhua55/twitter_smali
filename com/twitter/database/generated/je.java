package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayj;

/* compiled from: Twttr */
final class je extends m<ayj> {
    final /* synthetic */ it a;

    @aoa
    public je(it itVar, f fVar) {
        this.a = itVar;
        super(fVar);
    }

    public final String[] a() {
        return it.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayj> a(Object obj) {
        return new a(new iv(null), (Cursor) obj);
    }
}
