package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.axz;

/* compiled from: Twttr */
final class hs extends m<axz> {
    final /* synthetic */ hp a;

    @aoa
    public hs(hp hpVar, f fVar) {
        this.a = hpVar;
        super(fVar);
    }

    public final String[] a() {
        return hp.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<axz> a(Object obj) {
        return new a(new hr(null), (Cursor) obj);
    }
}
