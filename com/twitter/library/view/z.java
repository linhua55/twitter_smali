package com.twitter.library.view;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class z implements OnClickListener {
    final /* synthetic */ aa a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ TweetPivotView c;

    z(TweetPivotView tweetPivotView, aa aaVar, Tweet tweet) {
        this.c = tweetPivotView;
        this.a = aaVar;
        this.b = tweet;
    }

    public void onClick(View view) {
        this.a.a(this.b, this.b.af);
    }
}
