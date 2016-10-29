package com.twitter.android.composer;

import android.view.View;
import android.view.View.OnFocusChangeListener;

/* compiled from: Twttr */
class bz implements OnFocusChangeListener {
    final /* synthetic */ TweetBox a;

    bz(TweetBox tweetBox) {
        this.a = tweetBox;
    }

    public void onFocusChange(View view, boolean z) {
        if (this.a.c) {
            this.a.c = false;
            this.a.k();
            if (this.a.b != null) {
                this.a.b.c();
            }
        }
        if (this.a.b != null) {
            this.a.b.a(z);
        }
    }
}
