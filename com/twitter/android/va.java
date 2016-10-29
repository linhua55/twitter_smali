package com.twitter.android;

import apk;
import com.twitter.model.av.n;
import com.twitter.model.core.MediaEntity;
import defpackage.bfr;

/* compiled from: Twttr */
class va implements apk<n> {
    final /* synthetic */ TweetFragment2 a;

    va(TweetFragment2 tweetFragment2) {
        this.a = tweetFragment2;
    }

    public void a(int i, n nVar) {
        if (i == -1 && TweetFragment2.d(this.a) != null) {
            MediaEntity X = TweetFragment2.d(this.a).X();
            if (X != null) {
                TweetFragment2.a(this.a, new bfr(this.a.getContext(), TweetFragment2.c(this.a), X.c, nVar), 7, 0);
                ((vm) this.a.am()).a().a(nVar);
                this.a.b.a(nVar, false);
            }
        }
    }
}
