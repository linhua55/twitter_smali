package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.awa;

/* compiled from: Twttr */
final class di extends m<awa> {
    final /* synthetic */ df a;

    @aoa
    public di(df dfVar, f fVar) {
        this.a = dfVar;
        super(fVar);
    }

    public final String[] a() {
        return df.c;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<awa> a(Object obj) {
        return new a(new dh(null), (Cursor) obj);
    }
}
