package com.twitter.android;

import com.twitter.library.av.ad;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class ui implements ad {
    final /* synthetic */ TweetFragment a;

    ui(TweetFragment tweetFragment) {
        this.a = tweetFragment;
    }

    public Tweet a() {
        return TweetFragment.d(this.a);
    }
}
