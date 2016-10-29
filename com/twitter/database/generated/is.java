package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayh;

/* compiled from: Twttr */
final class is extends m<ayh> {
    final /* synthetic */ ip a;

    @aoa
    public is(ip ipVar, f fVar) {
        this.a = ipVar;
        super(fVar);
    }

    public final String[] a() {
        return ip.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayh> a(Object obj) {
        return new a(new ir(null), (Cursor) obj);
    }
}
