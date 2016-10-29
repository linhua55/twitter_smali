package com.twitter.android.client.tweetuploadmanager;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.android.client.z;
import com.twitter.library.client.Session;
import com.twitter.library.provider.v;
import com.twitter.model.drafts.d;

/* compiled from: Twttr */
class g extends AsyncTask<Void, Void, d> {
    private final Context a;
    private final Session b;
    private final long c;
    private final long d;

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        a((d) obj);
    }

    g(Context context, Session session, long j) {
        this.a = context;
        this.b = session;
        this.c = session.g();
        this.d = j;
    }

    protected d a(Void... voidArr) {
        return v.a(this.a, this.c).a(this.d);
    }

    protected void a(d dVar) {
        if (dVar != null) {
            z.a(this.a).a(this.b, dVar.b, dVar.c, 2131363377, false);
        }
    }
}
