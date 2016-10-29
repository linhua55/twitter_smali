package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.moments.ba;
import com.twitter.model.timeline.bc;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class u extends bg<v> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 9 && bc.s(cursor.getInt(cdc.g));
    }

    public v b(Cursor cursor) {
        return new v(c(cursor), e(cursor), d(cursor), (ba) m.a(cursor.getBlob(cdc.R), ba.a));
    }
}
