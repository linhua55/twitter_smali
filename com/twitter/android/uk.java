package com.twitter.android;

import com.twitter.model.av.n;
import cys;

/* compiled from: Twttr */
class uk implements cys<ap> {
    final /* synthetic */ vl a;
    final /* synthetic */ TweetFragment b;

    uk(TweetFragment tweetFragment, vl vlVar) {
        this.b = tweetFragment;
        this.a = vlVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((ap) obj);
    }

    public void a(ap apVar) {
        n a = apVar.a();
        if (a != null) {
            this.a.a(a);
            this.b.b.a(a, !apVar.b());
        }
    }
}
