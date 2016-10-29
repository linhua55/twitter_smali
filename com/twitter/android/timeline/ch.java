package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import cgu;
import com.twitter.library.provider.bm;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.cr;
import com.twitter.util.serialization.m;
import defpackage.cgy;

/* compiled from: Twttr */
public class ch extends bg<cd> {
    private final cj a;

    public ch() {
        this.a = new cj();
    }

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return bc.p(cursor.getInt(cdc.g));
    }

    public cd b(Cursor cursor) {
        cr crVar = (cr) m.a(cursor.getBlob(cdc.f), cr.a);
        ar c = c(cursor);
        return new cd(c, e(cursor), crVar != null ? crVar.e : null, a(cursor, c.i, c.j), cgu.f(), crVar);
    }

    private cgu<bd> a(Cursor cursor, int i, int i2) {
        return cgy.a(bm.a(cursor), this.a, i, i2 + 1);
    }
}
