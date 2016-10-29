package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
class be implements OnClickListener {
    final /* synthetic */ TweetView a;

    be(TweetView tweetView) {
        this.a = tweetView;
    }

    public void onClick(View view) {
        this.a.b(TweetActionType.e);
    }
}
