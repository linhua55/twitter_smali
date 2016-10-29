package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.database.schema.l;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class ah extends m<l> {
    final /* synthetic */ ae a;

    @aoa
    public ah(ae aeVar, f fVar) {
        this.a = aeVar;
        super(fVar);
    }

    public final String[] a() {
        return ae.c;
    }

    protected final <T extends com.twitter.database.internal.l> T b() {
        return (com.twitter.database.internal.l) ObjectUtils.a(this.a);
    }

    protected final j<l> a(Object obj) {
        return new a(new ag(null), (Cursor) obj);
    }
}
