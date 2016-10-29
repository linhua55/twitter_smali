package com.twitter.android.revenue;

import com.twitter.library.widget.TweetView;
import cuj;

/* compiled from: Twttr */
class r implements cuj<TweetView> {
    final /* synthetic */ p a;

    r(p pVar) {
        this.a = pVar;
    }

    public boolean a(TweetView tweetView) {
        return (tweetView == null || tweetView.isShown()) ? false : true;
    }
}
