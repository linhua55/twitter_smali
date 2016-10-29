package com.twitter.android;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.g;

/* compiled from: Twttr */
class uf implements g<Tweet> {
    final /* synthetic */ TweetFragment a;

    uf(TweetFragment tweetFragment) {
        this.a = tweetFragment;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Tweet a() {
        return TweetFragment.d(this.a);
    }
}
