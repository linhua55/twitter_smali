package com.twitter.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class fn implements OnClickListener {
    final /* synthetic */ TweetDetailView a;

    fn(TweetDetailView tweetDetailView) {
        this.a = tweetDetailView;
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131952742) {
            this.a.f.a(view, 12, this.a.e.d);
        } else if (id == 2131952734) {
            this.a.f.a(view, 11, this.a.e.c);
        }
    }
}
