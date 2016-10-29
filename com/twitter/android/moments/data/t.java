package com.twitter.android.moments.data;

import android.database.Cursor;
import chj;
import cni;
import com.twitter.model.moments.a;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.ad;
import com.twitter.model.moments.o;
import com.twitter.model.moments.q;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class t extends chj<ab> {
    public ab a(Cursor cursor) {
        long j = cursor.getLong(cursor.getColumnIndex("_id"));
        String string = cursor.getString(cursor.getColumnIndex("title"));
        boolean z = cursor.getInt(cursor.getColumnIndex("can_subscribe")) == 1;
        boolean z2 = cursor.getInt(cursor.getColumnIndex("is_live")) == 1;
        boolean z3 = cursor.getInt(cursor.getColumnIndex("is_sensitive")) == 1;
        String string2 = cursor.getString(cursor.getColumnIndex("subcategory_string"));
        String string3 = cursor.getString(cursor.getColumnIndex("subcategory_favicon_url"));
        String string4 = cursor.getString(cursor.getColumnIndex("time_string"));
        return (ab) new ad().a(j).a(string).a(z).b(z2).c(z3).b(string2).c(string3).d(string4).e(cursor.getString(cursor.getColumnIndex("duration_string"))).d(cursor.getInt(cursor.getColumnIndex("is_subscribed")) == 1).f(cursor.getString(cursor.getColumnIndex("description"))).a(cursor.getInt(cursor.getColumnIndex("num_subscribers"))).a((a) m.a(cursor.getBlob(cursor.getColumnIndex("author_info")), a.a)).a((cni) m.a(cursor.getBlob(cursor.getColumnIndex("promoted_content")), cni.a)).a((o) new q().a(cursor.getString(cursor.getColumnIndex("event_id"))).b(cursor.getString(cursor.getColumnIndex("event_type"))).r()).q();
    }
}
