package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.timeline.ac;
import com.twitter.model.timeline.aj;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class au extends bg<az> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 5;
    }

    public az b(Cursor cursor) {
        aj d = d(cursor);
        return new az(c(cursor), (ac) m.a(cursor.getBlob(cdc.f), ac.a), cursor.getLong(cdc.F), d, e(cursor));
    }
}
