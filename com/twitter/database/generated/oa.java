package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bat;

/* compiled from: Twttr */
final class oa extends m<bat> {
    final /* synthetic */ nx a;

    @aoa
    public oa(nx nxVar, f fVar) {
        this.a = nxVar;
        super(fVar);
    }

    public final String[] a() {
        return nx.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bat> a(Object obj) {
        return new a(new nz(null), (Cursor) obj);
    }
}
