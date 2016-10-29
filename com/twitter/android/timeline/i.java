package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.e;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class i extends bg<h> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 2 && bc.b(cursor.getInt(cdc.g));
    }

    public h b(Cursor cursor) {
        return new h(c(cursor), e(cursor), d(cursor), (e) m.a(cursor.getBlob(cdc.f), e.a));
    }
}
