package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.analytics.TweetAnalyticsWebViewActivity;

/* compiled from: Twttr */
class vd implements OnClickListener {
    final /* synthetic */ TweetFragment2 a;

    vd(TweetFragment2 tweetFragment2) {
        this.a = tweetFragment2;
    }

    public void onClick(View view) {
        TweetFragment2.k(this.a).b();
        this.a.startActivity(TweetAnalyticsWebViewActivity.a(this.a.getActivity(), TweetFragment2.d(this.a).t));
    }
}
