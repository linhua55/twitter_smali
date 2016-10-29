package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.timeline.p;
import com.twitter.util.object.e;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class r extends bg<t> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 13;
    }

    public t b(Cursor cursor) {
        return new t(c(cursor), e(cursor), d(cursor), (p) e.a(m.a(cursor.getBlob(cdc.f), p.a)));
    }
}
