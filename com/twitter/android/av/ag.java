package com.twitter.android.av;

import com.twitter.model.core.Tweet;
import com.twitter.util.z;

/* compiled from: Twttr */
class ag implements z<Tweet> {
    final /* synthetic */ af a;

    ag(af afVar) {
        this.a = afVar;
    }

    public void a(Tweet tweet) {
        if (tweet.equals(this.a.a)) {
            this.a.b(tweet);
        }
    }
}
