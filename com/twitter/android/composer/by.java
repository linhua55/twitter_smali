package com.twitter.android.composer;

import android.view.KeyEvent;
import com.twitter.android.autocomplete.b;

/* compiled from: Twttr */
class by implements b {
    final /* synthetic */ TweetBox a;

    by(TweetBox tweetBox) {
        this.a = tweetBox;
    }

    public boolean a(int i, KeyEvent keyEvent) {
        return i == 4 && this.a.b != null && this.a.b.a(keyEvent);
    }
}
