package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.w;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class y extends bg<z> {
    private final bt a;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    y(bt btVar) {
        this.a = btVar;
    }

    public boolean a(Cursor cursor) {
        int i = cursor.getInt(cdc.g);
        return bc.l(i) || bc.m(i);
    }

    public z b(Cursor cursor) {
        return new z(c(cursor), e(cursor), d(cursor), bc.m(cursor.getInt(cdc.g)) ? this.a.a(cursor) : null, (w) m.a(cursor.getBlob(cdc.f), w.a));
    }
}
