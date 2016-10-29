package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class fl implements OnClickListener {
    final /* synthetic */ TweetDetailView a;

    fl(TweetDetailView tweetDetailView) {
        this.a = tweetDetailView;
    }

    public void onClick(View view) {
        this.a.N.c(this.a.M.b);
    }
}
