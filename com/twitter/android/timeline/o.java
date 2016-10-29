package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import com.twitter.model.core.bg;
import com.twitter.model.timeline.bc;
import com.twitter.model.timeline.s;
import com.twitter.model.timeline.u;

/* compiled from: Twttr */
public class o extends bg<p> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 6;
    }

    public p b(Cursor cursor) {
        boolean z;
        u c = new u().a(cursor.getString(cdc.W)).b(cursor.getString(cdc.V)).c(cursor.getString(cdc.X)).d(cursor.getString(cdc.Y)).e(cursor.getString(cdc.ak)).f(cursor.getString(cdc.ad)).p(cursor.getString(cdc.T)).g(cursor.getString(cdc.ae)).b(cursor.getInt(cdc.af)).a(cursor.getInt(cdc.S)).a(bg.a(cursor.getBlob(cdc.ag))).b(bg.a(cursor.getBlob(cdc.ah))).h(cursor.getString(cdc.U)).a(cursor.getLong(cdc.ai)).c(cursor.getInt(cdc.aj));
        if (cursor.getColumnIndex("timeline_flags") == -1 || !bc.v(cursor.getInt(cdc.g))) {
            z = false;
        } else {
            z = true;
        }
        return new p(c(cursor), e(cursor), d(cursor), (s) c.b(z).q());
    }
}
