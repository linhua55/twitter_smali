package com.twitter.database.generated;

import android.database.Cursor;
import aoa;
import com.twitter.database.internal.f;
import com.twitter.database.internal.l;
import com.twitter.database.internal.m;
import com.twitter.database.model.j;
import com.twitter.database.schema.a;
import com.twitter.database.schema.c;
import com.twitter.database.schema.d;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public final class r extends m<d> implements c {
    private static final String[] a;

    static {
        a = new String[]{"_id", "sending_state"};
    }

    @aoa
    public r(f fVar) {
        super(fVar);
    }

    public final String[] a() {
        return a;
    }

    protected final <T extends l> T b() {
        return (l) ObjectUtils.a(this.b.a(a.class));
    }

    protected final j<d> a(Object obj) {
        return new com.twitter.database.internal.a(new t(null), (Cursor) obj);
    }
}
