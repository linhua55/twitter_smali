package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.bax;

/* compiled from: Twttr */
final class oh extends m<bax> {
    final /* synthetic */ od a;

    @aoa
    public oh(od odVar, f fVar) {
        this.a = odVar;
        super(fVar);
    }

    public final String[] a() {
        return od.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<bax> a(Object obj) {
        return new a(new of(null), (Cursor) obj);
    }
}
