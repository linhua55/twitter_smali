package com.twitter.android.moments.ui.fullscreen;

import com.twitter.android.dialog.k;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
final class ds implements k {
    final /* synthetic */ dz a;
    final /* synthetic */ Tweet b;

    ds(dz dzVar, Tweet tweet) {
        this.a = dzVar;
        this.b = tweet;
    }

    public void a() {
        this.a.a(TweetActionType.k, this.b);
    }
}
