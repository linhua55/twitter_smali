package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbh;

/* compiled from: Twttr */
final class pp extends m<bbh> {
    final /* synthetic */ pd a;

    @aoa
    public pp(pd pdVar, f fVar) {
        this.a = pdVar;
        super(fVar);
    }

    public final String[] a() {
        return pd.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bbh> a(Object obj) {
        return new a(new pf(null), (Cursor) obj);
    }
}
