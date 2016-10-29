package com.twitter.android.widget;

import android.content.Context;
import android.view.View;
import com.twitter.model.core.Tweet;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.ui.view.a;
import com.twitter.util.aj;
import defpackage.bcu;

/* compiled from: Twttr */
class ft extends a {
    final /* synthetic */ TweetDetailView a;
    private final Tweet b;
    private final long c;

    ft(TweetDetailView tweetDetailView, Context context, Tweet tweet, long j) {
        this.a = tweetDetailView;
        super(context.getResources().getColor(bcu.link_selected));
        this.b = tweet;
        this.c = j;
    }

    public void onClick(View view) {
        TwitterPlace twitterPlace = this.b.N;
        if (twitterPlace != null && !aj.a(twitterPlace.b) && this.a.h != null) {
            this.a.h.a(this.b.N);
            TweetDetailView.a("tweet_footer", this.b, this.c);
        }
    }
}
