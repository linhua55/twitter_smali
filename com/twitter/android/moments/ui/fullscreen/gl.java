package com.twitter.android.moments.ui.fullscreen;

import com.twitter.model.core.Tweet;
import com.twitter.util.z;

/* compiled from: Twttr */
class gl implements z<Tweet> {
    final /* synthetic */ gk a;

    gl(gk gkVar) {
        this.a = gkVar;
    }

    public void a(Tweet tweet) {
        if (tweet.equals(this.a.a)) {
            this.a.a(tweet);
        }
    }
}
