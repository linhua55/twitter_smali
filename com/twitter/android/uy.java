package com.twitter.android;

import com.twitter.util.object.g;

/* compiled from: Twttr */
class uy implements g<Long> {
    final /* synthetic */ TweetFragment2 a;

    uy(TweetFragment2 tweetFragment2) {
        this.a = tweetFragment2;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Long a() {
        return Long.valueOf(TweetFragment2.c(this.a) != null ? TweetFragment2.c(this.a).g() : 0);
    }
}
