package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.avo;

/* compiled from: Twttr */
final class cm extends m<avo> {
    final /* synthetic */ cj a;

    @aoa
    public cm(cj cjVar, f fVar) {
        this.a = cjVar;
        super(fVar);
    }

    public final String[] a() {
        return cj.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<avo> a(Object obj) {
        return new a(new cl(null), (Cursor) obj);
    }
}
