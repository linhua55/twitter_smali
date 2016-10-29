package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ban;

/* compiled from: Twttr */
final class ns extends m<ban> {
    final /* synthetic */ np a;

    @aoa
    public ns(np npVar, f fVar) {
        this.a = npVar;
        super(fVar);
    }

    public final String[] a() {
        return np.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<ban> a(Object obj) {
        return new a(new nr(null), (Cursor) obj);
    }
}
