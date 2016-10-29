package com.twitter.library.widget;

import com.twitter.model.core.TweetActionType;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
class ay implements n {
    final /* synthetic */ TweetView a;

    ay(TweetView tweetView) {
        this.a = tweetView;
    }

    public void a(TweetActionType tweetActionType) {
        this.a.b(tweetActionType);
        if (TweetView.c(this.a)) {
            s actionPrompt = this.a.getActionPrompt();
            if (actionPrompt != null && tweetActionType == actionPrompt.j()) {
                this.a.b(1);
            }
        }
    }
}
