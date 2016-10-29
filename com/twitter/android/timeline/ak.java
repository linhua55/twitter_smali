package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;

/* compiled from: Twttr */
public class ak extends bg<a> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 11;
    }

    public a b(Cursor cursor) {
        return new a(c(cursor), cursor.getString(cdc.f), e(cursor));
    }
}
