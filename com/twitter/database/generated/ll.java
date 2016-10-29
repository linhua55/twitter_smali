package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azp;

/* compiled from: Twttr */
final class ll extends m<azp> {
    final /* synthetic */ li a;

    @aoa
    public ll(li liVar, f fVar) {
        this.a = liVar;
        super(fVar);
    }

    public final String[] a() {
        return li.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azp> a(Object obj) {
        return new a(new lk(null), (Cursor) obj);
    }
}
