package com.twitter.android;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class tm implements OnGlobalLayoutListener {
    final /* synthetic */ TweetActivity a;

    tm(TweetActivity tweetActivity) {
        this.a = tweetActivity;
    }

    public void onGlobalLayout() {
        if (!this.a.t()) {
            this.a.e.n();
        }
    }
}
