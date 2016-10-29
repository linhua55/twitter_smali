package com.twitter.android.client;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class bs implements OnClickListener {
    final /* synthetic */ TwitterWebViewActivity a;

    bs(TwitterWebViewActivity twitterWebViewActivity) {
        this.a = twitterWebViewActivity;
    }

    public void onClick(View view) {
        this.a.c.setVisibility(8);
        this.a.a.reload();
    }
}
