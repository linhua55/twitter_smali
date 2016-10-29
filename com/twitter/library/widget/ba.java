package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnLongClickListener;

/* compiled from: Twttr */
class ba implements OnLongClickListener {
    final /* synthetic */ TweetView a;

    ba(TweetView tweetView) {
        this.a = tweetView;
    }

    public boolean onLongClick(View view) {
        return this.a.j();
    }
}
