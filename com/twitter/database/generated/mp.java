package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.azz;

/* compiled from: Twttr */
final class mp extends m<azz> {
    final /* synthetic */ mm a;

    @aoa
    public mp(mm mmVar, f fVar) {
        this.a = mmVar;
        super(fVar);
    }

    public final String[] a() {
        return mm.d;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.a);
    }

    protected final j<azz> a(Object obj) {
        return new a(new mo(null), (Cursor) obj);
    }
}
