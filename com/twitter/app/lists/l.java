package com.twitter.app.lists;

import android.database.Cursor;
import chj;
import com.twitter.model.core.cg;
import com.twitter.model.core.ch;
import com.twitter.model.topic.e;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
class l extends chj<cg> {
    private l() {
    }

    public cg a(Cursor cursor) {
        e eVar = (e) m.a(cursor.getBlob(10), e.b);
        ch chVar = new ch();
        boolean z = eVar != null && eVar.e;
        return (cg) chVar.b(z).a(cursor.getString(9)).b(cursor.getString(2)).c(cursor.getString(3)).a(cursor.getLong(1)).b(cursor.getLong(7)).c(cursor.getLong(5)).d(cursor.getString(4)).e(cursor.getString(8)).q();
    }
}
