package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.database.schema.n;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
final class al extends m<n> {
    final /* synthetic */ ai a;

    @aoa
    public al(ai aiVar, f fVar) {
        this.a = aiVar;
        super(fVar);
    }

    public final String[] a() {
        return ai.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<n> a(Object obj) {
        return new a(new ak(null), (Cursor) obj);
    }
}
