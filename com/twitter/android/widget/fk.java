package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class fk implements OnClickListener {
    final /* synthetic */ TweetDetailView a;

    fk(TweetDetailView tweetDetailView) {
        this.a = tweetDetailView;
    }

    public void onClick(View view) {
        this.a.h.e(this.a.g.W().c);
    }
}
