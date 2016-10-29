package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayd;

/* compiled from: Twttr */
final class ia extends m<ayd> {
    final /* synthetic */ hx a;

    @aoa
    public ia(hx hxVar, f fVar) {
        this.a = hxVar;
        super(fVar);
    }

    public final String[] a() {
        return hx.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayd> a(Object obj) {
        return new a(new hz(null), (Cursor) obj);
    }
}
