package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ayn;

/* compiled from: Twttr */
final class jm extends m<ayn> {
    final /* synthetic */ jj a;

    @aoa
    public jm(jj jjVar, f fVar) {
        this.a = jjVar;
        super(fVar);
    }

    public final String[] a() {
        return jj.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ayn> a(Object obj) {
        return new a(new jl(null), (Cursor) obj);
    }
}
