package com.twitter.android.timeline;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import bbu;
import ccc;
import cdc;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.df;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.o;
import com.twitter.util.collection.n;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class aq extends o {
    private final String a;
    private final String b;
    private final TwitterScribeAssociation c;
    private final int g;
    private final long i;
    private final long j;

    public aq(Context context, Session session, TwitterScribeAssociation twitterScribeAssociation, String str, String str2, int i, long j) {
        super(context, aq.class.getName(), session);
        this.g = i;
        this.i = j;
        this.c = twitterScribeAssociation;
        this.j = session.g();
        this.a = str;
        this.b = str2;
    }

    protected void a() {
        String[] strArr = new String[]{String.valueOf(this.g), String.valueOf(this.i)};
        Cursor query = this.h.getContentResolver().query(ck.a(ContentUris.withAppendedId(df.b, this.j), this.j), cdc.a, "timeline_data_type=? AND timeline_entity_id=?", strArr, null);
        switch (this.g) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                List a = a(query);
                if (!a.isEmpty()) {
                    bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.j).b(new String[]{this.a, null, this.b, null, "impression"})).a(this.c)).b(a));
                }
            default:
                throw new IllegalStateException("Invalid timeline data type: " + this.g);
        }
    }

    private List<TwitterScribeItem> a(Cursor cursor) {
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    List<TwitterScribeItem> arrayList = new ArrayList(cursor.getCount());
                    while (true) {
                        arrayList.add(TwitterScribeItem.a(this.h, ccc.a.a(cursor), this.c, null));
                        if (!cursor.moveToNext()) {
                            break;
                        }
                    }
                    return arrayList;
                }
                cursor.close();
            } finally {
                cursor.close();
            }
        }
        return n.g();
    }
}
