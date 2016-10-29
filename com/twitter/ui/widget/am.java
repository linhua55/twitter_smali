package com.twitter.ui.widget;

/* compiled from: Twttr */
class am implements Runnable {
    final /* synthetic */ TweetHeaderView a;

    am(TweetHeaderView tweetHeaderView) {
        this.a = tweetHeaderView;
    }

    public void run() {
        this.a.f.onClick(this.a);
    }
}
