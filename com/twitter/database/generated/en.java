package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awk;

/* compiled from: Twttr */
final class en extends m<awk> {
    final /* synthetic */ ef a;

    @aoa
    public en(ef efVar, f fVar) {
        this.a = efVar;
        super(fVar);
    }

    public final String[] a() {
        return ef.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awk> a(Object obj) {
        return new a(new eh(null), (Cursor) obj);
    }
}
