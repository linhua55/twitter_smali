package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class bb implements OnClickListener {
    final /* synthetic */ TweetView a;

    bb(TweetView tweetView) {
        this.a = tweetView;
    }

    public void onClick(View view) {
        this.a.g();
    }
}
