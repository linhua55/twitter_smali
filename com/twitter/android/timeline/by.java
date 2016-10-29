package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.timeline.aa;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class by extends bg<bc> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 14;
    }

    public bc b(Cursor cursor) {
        return new bc(c(cursor), e(cursor), d(cursor), (aa) ObjectUtils.a(e.a(m.a(cursor.getBlob(cdc.f), aa.a))));
    }
}
