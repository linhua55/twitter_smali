package com.twitter.android;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
class tq implements OnClickListener {
    final /* synthetic */ TweetActivity a;

    tq(TweetActivity tweetActivity) {
        this.a = tweetActivity;
    }

    public void onClick(View view) {
        bbu.a(new TwitterScribeLog(this.a.ab().g()).b("tweet:notification_landing:vit_tweet_embedded::click"));
        this.a.startActivity(new Intent(this.a, TweetActivity.class).putExtra("tw", this.a.x));
    }
}
