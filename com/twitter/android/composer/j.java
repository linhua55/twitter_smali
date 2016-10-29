package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class j implements OnClickListener {
    final /* synthetic */ TweetBox a;
    final /* synthetic */ ComposerActivity b;

    j(ComposerActivity composerActivity, TweetBox tweetBox) {
        this.b = composerActivity;
        this.a = tweetBox;
    }

    public void onClick(View view) {
        this.a.c();
        this.b.l();
    }
}
