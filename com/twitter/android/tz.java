package com.twitter.android;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class tz implements Runnable {
    final /* synthetic */ Tweet a;
    final /* synthetic */ long b;
    final /* synthetic */ TweetFragment c;

    tz(TweetFragment tweetFragment, Tweet tweet, long j) {
        this.c = tweetFragment;
        this.a = tweet;
        this.b = j;
    }

    public void run() {
        TweetFragment.e(this.c).a(TweetFragment.e(this.c).getCount(), this.a);
        TweetFragment.e(this.c).c(this.b);
        TweetFragment.v(this.c).b(false);
    }
}
