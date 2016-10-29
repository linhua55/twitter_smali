package com.twitter.android;

import android.database.Cursor;
import chj;
import cly;
import com.twitter.util.collection.z;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
class cm extends chj<z<Long, cly>> {
    final /* synthetic */ DMConversationFragment a;

    cm(DMConversationFragment dMConversationFragment) {
        this.a = dMConversationFragment;
    }

    public z<Long, cly> a(Cursor cursor) {
        Object obj = (cly) m.a(cursor.getBlob(cursor.getColumnIndex("card_state")), cly.a);
        Long valueOf = Long.valueOf(cursor.getLong(cursor.getColumnIndex("card_id")));
        if (obj == null) {
            obj = new cly();
        }
        return z.a(valueOf, obj);
    }
}
