package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class vf implements OnClickListener {
    final /* synthetic */ TweetFragment2 a;

    vf(TweetFragment2 tweetFragment2) {
        this.a = tweetFragment2;
    }

    public void onClick(View view) {
        TweetFragment2.a(this.a, TweetFragment2.d(this.a), TweetFragment2.c(this.a));
    }
}
