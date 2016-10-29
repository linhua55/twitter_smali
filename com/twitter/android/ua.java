package com.twitter.android;

import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class ua implements Runnable {
    final /* synthetic */ Tweet a;
    final /* synthetic */ TweetFragment b;

    ua(TweetFragment tweetFragment, Tweet tweet) {
        this.b = tweetFragment;
        this.a = tweet;
    }

    public void run() {
        if (TweetFragment.d(this.b) != null && this.a.D == TweetFragment.d(this.b).H) {
            TweetFragment.e(this.b).a(TweetFragment.e(this.b).getCount(), this.a);
            TweetFragment.e(this.b).notifyDataSetChanged();
            TweetFragment.v(this.b).b(false);
        }
    }
}
