package com.twitter.android;

/* compiled from: Twttr */
class ty implements Runnable {
    final /* synthetic */ long a;
    final /* synthetic */ TweetFragment b;

    ty(TweetFragment tweetFragment, long j) {
        this.b = tweetFragment;
        this.a = j;
    }

    public void run() {
        if (TweetFragment.e(this.b) != null && TweetFragment.v(this.b) != null) {
            TweetFragment.e(this.b).c(this.a);
            TweetFragment.v(this.b).b(false);
        }
    }
}
