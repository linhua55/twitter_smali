package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class ul implements OnClickListener {
    final /* synthetic */ TweetFragment a;

    ul(TweetFragment tweetFragment) {
        this.a = tweetFragment;
    }

    public void onClick(View view) {
        TweetFragment.a(this.a, TweetFragment.d(this.a), TweetFragment.c(this.a));
    }
}
