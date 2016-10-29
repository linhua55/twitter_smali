package com.twitter.android.timeline;

import android.database.Cursor;
import cdc;
import cni;
import com.twitter.android.events.sports.c;
import com.twitter.android.events.sports.d;
import com.twitter.android.widget.TopicView.TopicData;
import com.twitter.model.timeline.bc;
import com.twitter.model.topic.l;
import com.twitter.util.serialization.m;

/* compiled from: Twttr */
public class k extends bg<j> {
    public /* synthetic */ Object a(Object obj) {
        return b((Cursor) obj);
    }

    public /* synthetic */ boolean b(Object obj) {
        return a((Cursor) obj);
    }

    public boolean a(Cursor cursor) {
        return a(cursor, cursor.getPosition()) != 0;
    }

    public j b(Cursor cursor) {
        boolean z = true;
        int position = cursor.getPosition();
        int a = a(cursor, position);
        if (a == 2) {
            if ((position > 0 ? a(cursor, position - 1) : -1) == 1) {
                z = false;
            }
            return a(cursor, z);
        } else if (a == 1) {
            return f(cursor);
        } else {
            throw new IllegalArgumentException();
        }
    }

    private c a(Cursor cursor, boolean z) {
        d a = new d(c(cursor), e(cursor)).a(cursor.getString(cdc.r)).a(cursor.getInt(cdc.s)).b(cursor.getString(cdc.y)).c(cursor.getString(cdc.D)).d(cursor.getString(cdc.u)).e(cursor.getString(cdc.v)).a(cursor.getBlob(cdc.C)).f(cursor.getString(cdc.t)).g(cursor.getString(cdc.x)).a(d(cursor));
        if (z) {
            a.h(cursor.getString(cdc.z)).b(cursor.getInt(cdc.A));
        }
        return a.a();
    }

    private j f(Cursor cursor) {
        TopicData topicData;
        String string = cursor.getString(cdc.r);
        String string2 = cursor.getString(cdc.u);
        l lVar = (l) m.a(cursor.getBlob(cdc.f), l.a);
        int i = cursor.getInt(cdc.s);
        if (i == 2) {
            String string3 = cursor.getString(cdc.y);
            String string4 = cursor.getString(cdc.v);
            byte[] blob = cursor.getBlob(cdc.C);
            String string5 = cursor.getString(cdc.D);
            String string6 = cursor.getString(cdc.t);
            String string7 = cursor.getString(cdc.w);
            String string8 = cursor.getString(cdc.x);
            topicData = new TopicData(string, i, string2, string4, string3, cursor.getString(cdc.z), string6, string7, string5, cursor.getInt(cdc.A), cursor.getLong(cdc.E), blob, string8);
        } else {
            topicData = null;
        }
        return new com.twitter.android.events.c(c(cursor), e(cursor), d(cursor), string, string2, lVar, i, topicData, (cni) m.a(cursor.getBlob(cdc.B), cni.a), cursor.getInt(cdc.A));
    }

    private int a(Cursor cursor, int i) {
        int position = cursor.getPosition();
        cursor.moveToPosition(i);
        int i2 = cursor.getInt(cdc.g);
        int i3 = cursor.getInt(cdc.e);
        cursor.moveToPosition(position);
        if (i3 == 3 && bc.k(i2)) {
            return 2;
        }
        return 0;
    }
}
