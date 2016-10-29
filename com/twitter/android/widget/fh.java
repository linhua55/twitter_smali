package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;
import defpackage.cet;

/* compiled from: Twttr */
class fh implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ TweetCarouselView b;

    fh(TweetCarouselView tweetCarouselView, Tweet tweet) {
        this.b = tweetCarouselView;
        this.a = tweet;
    }

    public void onClick(View view) {
        if (this.b.l != null) {
            this.b.l.a(cet.a(this.b, this.a, true));
        }
    }
}
