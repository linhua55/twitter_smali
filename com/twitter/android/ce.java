package com.twitter.android;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

/* compiled from: Twttr */
class ce extends AsyncTask<Void, Void, List<TwitterUser>> {
    final /* synthetic */ cd a;
    private final List<Long> b;
    private final Context c;
    private final long d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((List) obj);
    }

    ce(cd cdVar, List<Long> list, Context context, long j) {
        this.a = cdVar;
        this.b = list;
        this.c = context;
        this.d = j;
    }

    protected List<TwitterUser> a(Void... voidArr) {
        return di.a(this.c, this.d).a(CollectionUtils.e(this.b));
    }

    protected void a(List<TwitterUser> list) {
        this.a.e.clear();
        if (list != null) {
            for (TwitterUser twitterUser : list) {
                this.a.e.put(Long.valueOf(twitterUser.c), twitterUser);
            }
        }
        this.a.b();
        this.a.g = false;
    }
}
