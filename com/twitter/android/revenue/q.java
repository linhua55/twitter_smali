package com.twitter.android.revenue;

import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.l;
import com.twitter.library.widget.TweetView;
import ctc;

/* compiled from: Twttr */
class q implements ctc<TweetView, l> {
    final /* synthetic */ p a;

    q(p pVar) {
        this.a = pVar;
    }

    public l a(TweetView tweetView) {
        if (tweetView != null) {
            aw awVar = (aw) tweetView.getTag(2131951712);
            if (awVar instanceof l) {
                l lVar = (l) awVar;
                this.a.c.e(lVar.a());
                return lVar;
            }
        }
        return null;
    }
}
