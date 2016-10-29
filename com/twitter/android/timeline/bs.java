package com.twitter.android.timeline;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.twitter.android.widget.TweetCarouselView;

/* compiled from: Twttr */
class bs implements OnClickListener {
    final /* synthetic */ TweetCarouselView a;
    final /* synthetic */ bb b;
    final /* synthetic */ bp c;

    bs(bp bpVar, TweetCarouselView tweetCarouselView, bb bbVar) {
        this.c = bpVar;
        this.a = tweetCarouselView;
        this.b = bbVar;
    }

    public void onClick(View view) {
        ViewParent parent = this.a.getParent();
        if (parent instanceof ViewGroup) {
            View view2 = (ViewGroup) parent;
            r1.d.a(this.a.getTweet(), view2.getParent() instanceof ViewGroup ? (ViewGroup) view2.getParent() : view2, this.c.b, this.b.d());
        }
    }
}
