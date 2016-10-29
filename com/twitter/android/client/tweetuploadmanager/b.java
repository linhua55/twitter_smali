package com.twitter.android.client.tweetuploadmanager;

import android.content.Context;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.client.Session;

/* compiled from: Twttr */
public class b extends AsyncOperation<Void, Void> {
    private final Context a;
    private final Session b;
    private final long c;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    public b(Context context, Session session, long j) {
        super(b.class.getName());
        this.a = context;
        this.b = session;
        this.c = j;
    }

    protected Void a() throws InterruptedException {
        TweetUploadManager.a(this.a, this.b, this.c);
        return null;
    }

    protected Void b() {
        return null;
    }
}
