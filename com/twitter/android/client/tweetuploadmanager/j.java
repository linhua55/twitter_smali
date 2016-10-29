package com.twitter.android.client.tweetuploadmanager;

import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class j implements e {
    private final c a;
    private final TweetUploadManager$TweetUploadState b;

    j(c cVar, TweetUploadManager$TweetUploadState tweetUploadManager$TweetUploadState) {
        this.a = cVar;
        this.b = tweetUploadManager$TweetUploadState;
    }

    public void a(Object obj) {
        TweetUploadManager$TweetUploadState[] values = TweetUploadManager$TweetUploadState.values();
        int ordinal = this.b.ordinal();
        if (ordinal >= values.length - 1) {
            TweetUploadManager.d(this.a);
            return;
        }
        try {
            TweetUploadManager.c(this.a, values[ordinal + 1]);
        } catch (TweetUploadException e) {
            TweetUploadManager.a(e);
        }
    }
}
