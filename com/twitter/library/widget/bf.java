package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class bf implements OnClickListener {
    final /* synthetic */ TweetView a;

    bf(TweetView tweetView) {
        this.a = tweetView;
    }

    public void onClick(View view) {
        this.a.f(true);
    }
}
