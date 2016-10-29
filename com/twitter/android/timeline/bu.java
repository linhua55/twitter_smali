package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import cni;
import com.twitter.model.topic.d;
import com.twitter.model.topic.i;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class bu extends bg<bv> {
    private final int a;

    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public bu(int i) {
        this.a = i;
    }

    public boolean a(Cursor cursor) {
        return cursor.getInt(cdc.e) == 7 && this.a == 28;
    }

    public bv b(Cursor cursor) {
        if (a(cursor)) {
            return new bw(c(cursor), e(cursor), d(cursor)).a(cursor.getString(cdc.r)).b(cursor.getString(cdc.u)).c(cursor.getString(cdc.v)).a((cni) m.a(cursor.getBlob(cdc.B), cni.a)).a((i) m.a(cursor.getBlob(cdc.C), d.a)).a(cursor.getInt(cdc.j) > 0).d(cursor.getString(cdc.t)).a(cursor.getInt(cdc.s)).e(cursor.getString(cdc.D)).b(cursor.getInt(cdc.A)).a();
        }
        throw new IllegalArgumentException();
    }
}
