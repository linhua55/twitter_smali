package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import cgu;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.cr;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class ce extends bg<cd> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return bc.n(cursor.getInt(cdc.g));
    }

    public cd b(Cursor cursor) {
        return new cd(c(cursor), e(cursor), d(cursor), cgu.f(), cgu.f(), (cr) m.a(cursor.getBlob(cdc.f), cr.a));
    }
}
