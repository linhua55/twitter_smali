package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import com.twitter.library.api.timeline.d;

/* compiled from: Twttr */
class uc implements OnClickListener {
    final /* synthetic */ FragmentActivity a;
    final /* synthetic */ TweetFragment b;

    uc(TweetFragment tweetFragment, FragmentActivity fragmentActivity) {
        this.b = tweetFragment;
        this.a = fragmentActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        TweetFragment.e(this.b, new d(this.a, TweetFragment.c(this.b), TweetFragment.d(this.b).t, TweetFragment.d(this.b).u).a(TweetFragment.d(this.b).f).a(Boolean.valueOf(TweetFragment.d(this.b).l())), 3, 0);
        TweetFragment.b(this.b, true);
        TweetFragment.a(this.b, "favorite");
    }
}
