package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import cgu;
import com.twitter.library.provider.bm;
import com.twitter.model.moments.au;
import com.twitter.util.serialization.m;
import defpackage.cgy;

/* compiled from: Twttr */
public class ah extends bg<aj> {
    private final ai a;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public ah(ai aiVar) {
        this.a = aiVar;
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 12;
    }

    public aj b(Cursor cursor) {
        au auVar = (au) m.a(cursor.getBlob(cdc.f), au.a);
        ar c = c(cursor);
        return new aj(c, e(cursor), auVar.c, a(cursor, c.i, c.j), auVar.d);
    }

    private cgu<ba> a(Cursor cursor, int i, int i2) {
        return cgy.a(bm.a(cursor), this.a, i, i2 + 1);
    }
}
