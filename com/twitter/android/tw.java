package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import bdj;

/* compiled from: Twttr */
class tw implements OnClickListener {
    final /* synthetic */ bdj a;
    final /* synthetic */ TweetFragment b;

    tw(TweetFragment tweetFragment, bdj bdj) {
        this.b = tweetFragment;
        this.a = bdj;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952700) {
            this.a.d(false, true);
        }
        this.b.b.c();
        TweetFragment.a(this.b, true);
        view.setClickable(false);
        TweetFragment.o(this.b);
    }
}
