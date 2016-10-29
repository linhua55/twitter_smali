package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnLongClickListener;

/* compiled from: Twttr */
class k implements OnLongClickListener {
    final /* synthetic */ TweetBox a;
    final /* synthetic */ ComposerActivity b;

    k(ComposerActivity composerActivity, TweetBox tweetBox) {
        this.b = composerActivity;
        this.a = tweetBox;
    }

    public boolean onLongClick(View view) {
        return this.a.e();
    }
}
