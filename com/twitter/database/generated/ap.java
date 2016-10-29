package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.aum;

/* compiled from: Twttr */
final class ap extends m<aum> {
    final /* synthetic */ am a;

    @aoa
    public ap(am amVar, f fVar) {
        this.a = amVar;
        super(fVar);
    }

    public final String[] a() {
        return am.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<aum> a(Object obj) {
        return new a(new ao(null), (Cursor) obj);
    }
}
