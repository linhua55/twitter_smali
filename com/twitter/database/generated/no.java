package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bal;

/* compiled from: Twttr */
final class no extends m<bal> {
    final /* synthetic */ nl a;

    @aoa
    public no(nl nlVar, f fVar) {
        this.a = nlVar;
        super(fVar);
    }

    public final String[] a() {
        return nl.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bal> a(Object obj) {
        return new a(new nn(null), (Cursor) obj);
    }
}
