package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class bd implements OnClickListener {
    final /* synthetic */ TweetView a;

    bd(TweetView tweetView) {
        this.a = tweetView;
    }

    public void onClick(View view) {
        this.a.h();
    }
}
