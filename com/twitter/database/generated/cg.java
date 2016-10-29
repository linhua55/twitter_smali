package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avk;

/* compiled from: Twttr */
final class cg extends m<avk> {
    final /* synthetic */ cd a;

    @aoa
    public cg(cd cdVar, f fVar) {
        this.a = cdVar;
        super(fVar);
    }

    public final String[] a() {
        return cd.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avk> a(Object obj) {
        return new a(new cf(null), (Cursor) obj);
    }
}
