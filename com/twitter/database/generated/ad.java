package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.schema.j;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class ad extends m<j> {
    final /* synthetic */ aa a;

    @aoa
    public ad(aa aaVar, f fVar) {
        this.a = aaVar;
        super(fVar);
    }

    public final String[] a() {
        return aa.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final com.twitter.database.model.j<j> a(Object obj) {
        return new a(new ac(null), (Cursor) obj);
    }
}
