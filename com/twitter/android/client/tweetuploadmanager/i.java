package com.twitter.android.client.tweetuploadmanager;

import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class i implements e<Exception> {
    private final c a;

    i(c cVar) {
        this.a = cVar;
    }

    public void a(Exception exception) {
        if (exception instanceof TweetUploadException) {
            exception = (TweetUploadException) exception;
        } else {
            exception = new TweetUploadException(this.a, exception);
        }
        TweetUploadManager.a(exception);
    }
}
