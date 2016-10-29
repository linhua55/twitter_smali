package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class oq extends m<Object> {
    final /* synthetic */ om a;

    @aoa
    public oq(om omVar, f fVar) {
        this.a = omVar;
        super(fVar);
    }

    public final String[] a() {
        return om.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<Object> a(Object obj) {
        return new a(new oo(null), (Cursor) obj);
    }
}
