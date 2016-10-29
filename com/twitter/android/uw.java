package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import com.twitter.library.api.timeline.d;

/* compiled from: Twttr */
class uw implements OnClickListener {
    final /* synthetic */ FragmentActivity a;
    final /* synthetic */ TweetFragment2 b;

    uw(TweetFragment2 tweetFragment2, FragmentActivity fragmentActivity) {
        this.b = tweetFragment2;
        this.a = fragmentActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        TweetFragment2.c(this.b, new d(this.a, TweetFragment2.c(this.b), TweetFragment2.d(this.b).t, TweetFragment2.d(this.b).u).a(TweetFragment2.d(this.b).f).a(Boolean.valueOf(TweetFragment2.d(this.b).l())), 3, 0);
        TweetFragment2.b(this.b, true);
        TweetFragment2.a(this.b, "favorite");
    }
}
