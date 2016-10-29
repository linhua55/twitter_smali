package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.moments.au;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class ai extends bg<ba> {
    public ba a(Cursor cursor) {
        au auVar = (au) m.a(cursor.getBlob(cdc.f), au.a);
        return new ba(c(cursor), e(cursor), auVar.b, d(cursor), auVar.d);
    }
}
