package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.resilient.b;
import com.twitter.library.resilient.c;
import com.twitter.library.resilient.d;
import org.json.JSONException;

/* compiled from: Twttr */
final class m extends c<com.twitter.android.client.tweetuploadmanager.c> {
    m(String str, Class cls) {
        super(str, cls);
    }

    public /* synthetic */ b b(Context context, Session session, d dVar) throws JSONException {
        return a(context, session, dVar);
    }

    public com.twitter.android.client.tweetuploadmanager.c a(Context context, Session session, d dVar) throws JSONException {
        return new com.twitter.android.client.tweetuploadmanager.c(context, session, dVar);
    }
}
