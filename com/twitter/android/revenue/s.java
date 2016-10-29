package com.twitter.android.revenue;

import com.twitter.android.timeline.l;
import com.twitter.library.widget.TweetView;
import ctc;

/* compiled from: Twttr */
class s implements ctc<TweetView, Long> {
    final /* synthetic */ p a;

    s(p pVar) {
        this.a = pVar;
    }

    public Long a(TweetView tweetView) {
        l lVar = (l) this.a.a.a(tweetView);
        return lVar != null ? Long.valueOf(lVar.b()) : null;
    }
}
