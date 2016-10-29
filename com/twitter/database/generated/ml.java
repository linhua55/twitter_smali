package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azx;

/* compiled from: Twttr */
final class ml extends m<azx> {
    final /* synthetic */ ly a;

    @aoa
    public ml(ly lyVar, f fVar) {
        this.a = lyVar;
        super(fVar);
    }

    public final String[] a() {
        return ly.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azx> a(Object obj) {
        return new a(new ma(null), (Cursor) obj);
    }
}
