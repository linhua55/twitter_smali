package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.a;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.util.object.ObjectUtils;
import defpackage.ays;
import defpackage.ayu;
import defpackage.ayv;

/* compiled from: Twttr */
public final class jx extends m<ayv> implements ayu {
    private static final String[] a;

    static {
        a = new String[]{"notif_id"};
    }

    @aoa
    public jx(f fVar) {
        super(fVar);
    }

    public final String[] a() {
        return a;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.b.a(ays.class));
    }

    protected final j<ayv> a(Object obj) {
        return new a(new jz(null), (Cursor) obj);
    }
}
