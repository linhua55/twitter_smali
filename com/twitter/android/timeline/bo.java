package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import cgu;
import com.twitter.library.provider.bm;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.bc;
import com.twitter.util.serialization.m;
import defpackage.cgy;

/* compiled from: Twttr */
public class bo extends bg<al<bb>> {
    private final bt a;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public bo(bt btVar) {
        this.a = btVar;
    }

    public boolean a(Cursor cursor) {
        int i = cursor.getInt(cdc.e);
        int i2 = cursor.getInt(cdc.g);
        if (i == 1 && bc.f(i2)) {
            return true;
        }
        return false;
    }

    public al<bb> b(Cursor cursor) {
        aj ajVar = (aj) m.a(cursor.getBlob(cdc.k), aj.a);
        ar c = c(cursor);
        return new al(c, e(cursor), ajVar, a(cursor, c.i, c.j));
    }

    private cgu<bb> a(Cursor cursor, int i, int i2) {
        return cgy.a(bm.a(cursor), this.a, i, i2 + 1);
    }
}
