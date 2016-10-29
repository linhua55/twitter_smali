package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;

/* compiled from: Twttr */
class gp implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ gm b;

    gp(gm gmVar, Tweet tweet) {
        this.b = gmVar;
        this.a = tweet;
    }

    public void onClick(View view) {
        this.b.h.a(TweetActionType.c, this.a);
    }
}
