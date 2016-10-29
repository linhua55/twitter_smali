package com.twitter.app.main;

import android.content.ContentUris;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import com.twitter.android.bu;
import com.twitter.config.d;
import com.twitter.library.client.l;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cx;
import com.twitter.util.math.a;
import com.twitter.util.serialization.s;
import defpackage.cbj;
import defpackage.ccp;
import java.util.HashSet;
import java.util.List;

/* compiled from: Twttr */
class r implements LoaderCallbacks<Cursor> {
    final /* synthetic */ MainActivity a;

    private r(MainActivity mainActivity) {
        this.a = mainActivity;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        String a = cbj.a();
        String b = cbj.b();
        return new bu(this.a, ck.a(ContentUris.withAppendedId(cx.a, 0), this.a.ab().g()), ccp.a, "country=? AND language=?", new String[]{a, b}, "_id ASC");
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            List list = (List) new l(this.a, this.a.ab().e(), "news").a("latestTopNewsIds", s.a(s.j));
            int a = d.a("japan_news_android_num_top_stories", 10);
            int a2 = d.a("japan_news_android_max_num_unseen_top_stories", 5);
            if (list != null) {
                HashSet hashSet = new HashSet();
                while (cursor.moveToNext() && hashSet.size() < a) {
                    hashSet.add(cursor.getString(3));
                }
                a = a.a(hashSet.size() / 2, 1, a2);
                hashSet.removeAll(list);
                if (hashSet.size() >= a) {
                    this.a.d(-100);
                    return;
                }
            }
        }
        this.a.d(0);
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }
}
