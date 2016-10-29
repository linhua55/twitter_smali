package com.twitter.android;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class us implements Runnable {
    final /* synthetic */ Tweet a;
    final /* synthetic */ ur b;

    us(ur urVar, Tweet tweet) {
        this.b = urVar;
        this.a = tweet;
    }

    public void run() {
        TweetFragment2.b(this.b.a).remove(this.a);
        TweetFragment2.a(this.b.a).a(TweetFragment2.b(this.b.a), true);
    }
}
