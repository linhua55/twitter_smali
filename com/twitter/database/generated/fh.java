package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awu;

/* compiled from: Twttr */
final class fh extends m<awu> {
    final /* synthetic */ fe a;

    @aoa
    public fh(fe feVar, f fVar) {
        this.a = feVar;
        super(fVar);
    }

    public final String[] a() {
        return fe.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awu> a(Object obj) {
        return new a(new fg(null), (Cursor) obj);
    }
}
