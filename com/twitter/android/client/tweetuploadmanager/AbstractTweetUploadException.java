package com.twitter.android.client.tweetuploadmanager;

/* compiled from: Twttr */
public abstract class AbstractTweetUploadException extends Exception {
    private final c mLastContext;

    public AbstractTweetUploadException(c cVar, String str) {
        super(a(cVar, str));
        this.mLastContext = cVar;
    }

    public AbstractTweetUploadException(c cVar, Exception exception) {
        super(a(cVar, exception != null ? exception.getMessage() : "Unknown root cause"), exception);
        this.mLastContext = cVar;
    }

    private static String a(c cVar, String str) {
        return "Tweet Upload Failed [" + str + "]\n--------------------------------\n" + cVar.b(true) + "\n--------------------------------\n";
    }

    public c a() {
        return this.mLastContext;
    }
}
