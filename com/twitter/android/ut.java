package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import bdj;

/* compiled from: Twttr */
class ut implements OnClickListener {
    final /* synthetic */ bdj a;
    final /* synthetic */ TweetFragment2 b;

    ut(TweetFragment2 tweetFragment2, bdj bdj) {
        this.b = tweetFragment2;
        this.a = bdj;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952700) {
            this.a.d(false, true);
        }
        this.b.b.c();
        TweetFragment2.a(this.b, true);
        view.setClickable(false);
        TweetFragment2.l(this.b);
    }
}
