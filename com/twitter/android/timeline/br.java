package com.twitter.android.timeline;

import android.view.View;
import android.view.View.OnLongClickListener;
import com.twitter.android.tj;
import com.twitter.android.widget.TweetCarouselView;

/* compiled from: Twttr */
class br implements OnLongClickListener {
    final /* synthetic */ TweetCarouselView a;
    final /* synthetic */ bp b;

    br(bp bpVar, TweetCarouselView tweetCarouselView) {
        this.b = bpVar;
        this.a = tweetCarouselView;
    }

    public boolean onLongClick(View view) {
        tj.a(this.a.getTweet(), this.b.e, this.b.b, this.b.d, this.b.g.f);
        return true;
    }
}
