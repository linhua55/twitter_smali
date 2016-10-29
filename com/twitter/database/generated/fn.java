package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.aww;

/* compiled from: Twttr */
final class fn extends m<aww> {
    final /* synthetic */ fi a;

    @aoa
    public fn(fi fiVar, f fVar) {
        this.a = fiVar;
        super(fVar);
    }

    public final String[] a() {
        return fi.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<aww> a(Object obj) {
        return new a(new fk(null), (Cursor) obj);
    }
}
