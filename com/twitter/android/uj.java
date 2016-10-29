package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.analytics.TweetAnalyticsWebViewActivity;

/* compiled from: Twttr */
class uj implements OnClickListener {
    final /* synthetic */ TweetFragment a;

    uj(TweetFragment tweetFragment) {
        this.a = tweetFragment;
    }

    public void onClick(View view) {
        TweetFragment.n(this.a).b();
        this.a.startActivity(TweetAnalyticsWebViewActivity.a(this.a.getActivity(), TweetFragment.d(this.a).t));
    }
}
