package com.twitter.android;

import com.twitter.util.object.g;

/* compiled from: Twttr */
class ue implements g<Long> {
    final /* synthetic */ TweetFragment a;

    ue(TweetFragment tweetFragment) {
        this.a = tweetFragment;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Long a() {
        return Long.valueOf(TweetFragment.c(this.a) != null ? TweetFragment.c(this.a).g() : 0);
    }
}
