package com.twitter.android.widget;

import com.twitter.library.view.b;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.cr;

/* compiled from: Twttr */
class fj extends b {
    final /* synthetic */ Tweet a;
    final /* synthetic */ TweetCarouselView b;

    fj(TweetCarouselView tweetCarouselView, Tweet tweet) {
        this.b = tweetCarouselView;
        this.a = tweet;
    }

    public void a(cr crVar) {
        if (this.a != null && this.b.m != null) {
            this.b.l.a(this.a, crVar);
        }
    }
}
