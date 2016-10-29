package com.twitter.android.client;

import android.content.Context;
import com.twitter.android.client.tweetuploadmanager.TweetUploadManager;
import com.twitter.android.composer.bw;
import com.twitter.internal.android.service.ab;
import com.twitter.library.client.Session;
import com.twitter.model.drafts.d;

/* compiled from: Twttr */
class bx extends bw {
    private final Context a;
    private final Session b;

    bx(Context context, Session session, d dVar) {
        super(context, session, dVar, true);
        this.a = context;
        this.b = session;
    }

    public void a(ab<Long> abVar) {
        super.a(abVar);
        Long l = (Long) abVar.b();
        if (!isCancelled()) {
            TweetUploadManager.a(this.a, this.b, l.longValue());
        }
    }
}
