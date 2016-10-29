package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bad;

/* compiled from: Twttr */
final class mv extends m<bad> {
    final /* synthetic */ ms a;

    @aoa
    public mv(ms msVar, f fVar) {
        this.a = msVar;
        super(fVar);
    }

    public final String[] a() {
        return ms.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bad> a(Object obj) {
        return new a(new mu(null), (Cursor) obj);
    }
}
