package com.twitter.android;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class tv implements Runnable {
    final /* synthetic */ Tweet a;
    final /* synthetic */ tu b;

    tv(tu tuVar, Tweet tweet) {
        this.b = tuVar;
        this.a = tweet;
    }

    public void run() {
        TweetFragment.b(this.b.a).remove(this.a);
        TweetFragment.a(this.b.a).a(TweetFragment.b(this.b.a), true);
    }
}
