package com.twitter.library.provider;

import android.database.Cursor;
import android.os.Bundle;
import com.twitter.library.api.search.TwitterSearchQuery;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import java.util.ArrayList;

/* compiled from: Twttr */
public class d extends bm<TwitterSearchQuery> {
    public d(Cursor cursor) {
        super(cursor);
    }

    public void a() {
        Object obj = null;
        Cursor cursor = this.e;
        if (cursor == null || !cursor.moveToFirst()) {
            this.c = null;
            return;
        }
        long j = 0;
        this.c = new ArrayList();
        do {
            long j2 = cursor.getLong(3);
            if (j2 != j) {
                if (obj != null) {
                    this.c.add(obj);
                }
                obj = new TwitterSearchQuery(cursor.getString(1), cursor.getString(2), cursor.getLong(3), new ArrayList());
                j = j2;
            }
            TwitterUser twitterUser = (TwitterUser) new cp().a(cursor.getLong(4)).f(cursor.getString(6)).b(cursor.getString(7)).q();
            if (obj != null) {
                obj.i.add(twitterUser);
            }
        } while (cursor.moveToNext());
    }

    public long getLong(int i) {
        if (i == 0) {
            return ((TwitterSearchQuery) this.c.get(this.d)).g;
        }
        return super.getLong(i);
    }

    public String getString(int i) {
        if (i == 1) {
            return ((TwitterSearchQuery) this.c.get(this.d)).a;
        }
        if (i == 2) {
            return ((TwitterSearchQuery) this.c.get(this.d)).b;
        }
        return super.getString(i);
    }

    public Bundle getExtras() {
        Bundle bundle = new Bundle(super.getExtras());
        TwitterSearchQuery twitterSearchQuery = (TwitterSearchQuery) c();
        bundle.putString("name", twitterSearchQuery.a);
        bundle.putString("query", twitterSearchQuery.b);
        bundle.putParcelableArrayList("users", new ArrayList(twitterSearchQuery.i));
        return bundle;
    }
}
