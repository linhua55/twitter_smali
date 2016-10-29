package com.twitter.android.revenue;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.widget.TweetView;

/* compiled from: Twttr */
class ao implements OnClickListener {
    final /* synthetic */ TweetView a;
    final /* synthetic */ an b;

    ao(an anVar, TweetView tweetView) {
        this.b = anVar;
        this.a = tweetView;
    }

    public void onClick(View view) {
        this.b.b.startActivity(u.a(this.b.b, this.a.getTweet(), this.b.d));
        this.b.a();
    }
}
