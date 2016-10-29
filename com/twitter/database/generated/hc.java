package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axm;

/* compiled from: Twttr */
final class hc extends m<axm> {
    final /* synthetic */ gz a;

    @aoa
    public hc(gz gzVar, f fVar) {
        this.a = gzVar;
        super(fVar);
    }

    public final String[] a() {
        return gz.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axm> a(Object obj) {
        return new a(new hb(null), (Cursor) obj);
    }
}
