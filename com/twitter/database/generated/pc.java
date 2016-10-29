package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbf;

/* compiled from: Twttr */
final class pc extends m<bbf> {
    final /* synthetic */ oz a;

    @aoa
    public pc(oz ozVar, f fVar) {
        this.a = ozVar;
        super(fVar);
    }

    public final String[] a() {
        return oz.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bbf> a(Object obj) {
        return new a(new pb(null), (Cursor) obj);
    }
}
