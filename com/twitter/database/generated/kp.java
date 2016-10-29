package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azf;

/* compiled from: Twttr */
final class kp extends m<azf> {
    final /* synthetic */ km a;

    @aoa
    public kp(km kmVar, f fVar) {
        this.a = kmVar;
        super(fVar);
    }

    public final String[] a() {
        return km.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azf> a(Object obj) {
        return new a(new ko(null), (Cursor) obj);
    }
}
