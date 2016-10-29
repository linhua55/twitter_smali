package com.twitter.android.timeline;

import android.database.Cursor;
import ccb;
import cdc;
import com.twitter.model.core.EscherbirdAnnotation.DomainType;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ba;
import com.twitter.model.timeline.aj;
import com.twitter.util.serialization.m;
import defpackage.bvq;
import java.util.List;

/* compiled from: Twttr */
public class bt extends bg<bb> {
    private final boolean a;
    private final List<DomainType> b;

    public bt(boolean z, int i) {
        this.a = z;
        this.b = bvq.b(i);
    }

    public bb a(Cursor cursor) {
        aj ajVar;
        ba baVar = null;
        ar c = c(cursor);
        long e = e(cursor);
        Tweet a = ccb.a.a(cursor).b(this.b).a();
        if (this.a) {
            baVar = (ba) m.a(cursor.getBlob(cdc.R), ba.a);
            ajVar = (aj) m.a(cursor.getBlob(cdc.k), aj.a);
        } else {
            ajVar = null;
        }
        if (b(cursor)) {
            return new ay(c, e, a, ajVar);
        }
        if (baVar != null) {
            return new ax(c, e, a, ajVar, baVar);
        }
        return new bb(c, e, a, ajVar);
    }

    private static boolean b(Cursor cursor) {
        return cursor.getLong(42) != 0;
    }
}
