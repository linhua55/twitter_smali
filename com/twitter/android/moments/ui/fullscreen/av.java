package com.twitter.android.moments.ui.fullscreen;

import com.twitter.library.view.m;
import com.twitter.model.core.Tweet;
import com.twitter.util.object.b;

/* compiled from: Twttr */
class av implements b<Tweet, m> {
    final /* synthetic */ long a;
    final /* synthetic */ as b;

    av(as asVar, long j) {
        this.b = asVar;
        this.a = j;
    }

    public m a(Tweet tweet) {
        return new bf(this.b.a, tweet, this.a, this.b.m);
    }
}
