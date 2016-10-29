package com.twitter.library.widget;

import com.twitter.library.view.b;
import com.twitter.model.core.ap;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;

/* compiled from: Twttr */
class bg extends b {
    final /* synthetic */ TweetView a;

    bg(TweetView tweetView) {
        this.a = tweetView;
    }

    public void a(cr crVar) {
        if (TweetView.a(this.a) != null && TweetView.b(this.a) != null && crVar != null) {
            TweetView.a(this.a).a(TweetView.b(this.a), crVar);
        }
    }

    public boolean b(cr crVar) {
        return !TweetView.a(crVar, TweetView.b(this.a).aa()) || TweetView.a(this.a, TweetView.b(this.a));
    }

    public void a(q qVar) {
        if (TweetView.a(this.a) != null && TweetView.b(this.a) != null) {
            TweetView.a(this.a).a(TweetView.b(this.a), qVar);
        }
    }

    public void a(com.twitter.model.core.b bVar) {
        if (TweetView.a(this.a) != null && TweetView.b(this.a) != null) {
            TweetView.a(this.a).a(TweetView.b(this.a), bVar);
        }
    }

    public void a(ap apVar) {
        if (TweetView.a(this.a) != null && TweetView.b(this.a) != null) {
            TweetView.a(this.a).a(TweetView.b(this.a), apVar);
        }
    }
}
