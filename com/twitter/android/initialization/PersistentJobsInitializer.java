package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.resilient.h;
import defpackage.aof;

/* compiled from: Twttr */
public class PersistentJobsInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        a(h.a(context));
    }

    public static void a(h hVar) {
        hVar.a(new l("tweet", c.class));
        hVar.a(new m("tweet_upload", c.class));
    }
}
