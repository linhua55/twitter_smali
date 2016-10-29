package com.twitter.android;

import apk;
import com.twitter.model.av.n;
import com.twitter.model.core.MediaEntity;
import defpackage.bfr;

/* compiled from: Twttr */
class ug implements apk<n> {
    final /* synthetic */ TweetFragment a;

    ug(TweetFragment tweetFragment) {
        this.a = tweetFragment;
    }

    public void a(int i, n nVar) {
        if (i == -1 && TweetFragment.d(this.a) != null) {
            MediaEntity X = TweetFragment.d(this.a).X();
            if (X != null) {
                TweetFragment.a(this.a, new bfr(this.a.getContext(), TweetFragment.c(this.a), X.c, nVar), 7, 0);
                ((vm) this.a.am()).a().a(nVar);
                this.a.b.a(nVar, false);
            }
        }
    }
}
