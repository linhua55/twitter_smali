package com.twitter.android.timeline;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.widget.TweetCarouselView;

/* compiled from: Twttr */
class bq implements OnClickListener {
    final /* synthetic */ TweetCarouselView a;
    final /* synthetic */ bp b;

    bq(bp bpVar, TweetCarouselView tweetCarouselView) {
        this.b = bpVar;
        this.a = tweetCarouselView;
    }

    public void onClick(View view) {
        this.b.b.startActivity(this.b.a(this.a.getTweet()));
    }
}
