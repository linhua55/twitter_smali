package com.twitter.android.widget;

import android.content.Intent;
import android.view.View;
import com.twitter.android.RootTweetActivity;
import com.twitter.model.core.Tweet;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
class fi extends a {
    final /* synthetic */ Tweet a;
    final /* synthetic */ TweetCarouselView b;

    fi(TweetCarouselView tweetCarouselView, int i, int i2, boolean z, Tweet tweet) {
        this.b = tweetCarouselView;
        this.a = tweet;
        super(i, i2, z);
    }

    public void onClick(View view) {
        this.b.b.startActivity(new Intent(this.b.b, RootTweetActivity.class).putExtra("tw", this.a));
    }
}
