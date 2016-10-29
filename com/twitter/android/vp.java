package com.twitter.android;

import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.c;
import vv;

/* compiled from: Twttr */
class vp implements c<Void, vv> {
    final /* synthetic */ TweetListFragment a;

    vp(TweetListFragment tweetListFragment) {
        this.a = tweetListFragment;
    }

    public /* synthetic */ void a(AsyncOperation asyncOperation) {
        b((vv) asyncOperation);
    }

    public /* synthetic */ void b(AsyncOperation asyncOperation) {
        a((vv) asyncOperation);
    }

    public void a(vv vvVar) {
    }

    public void a(Void voidR, vv vvVar) {
    }

    public void b(vv vvVar) {
        if (((Integer) vvVar.l().b()).intValue() > 0 && this.a.ad()) {
            TweetListFragment.a(this.a);
        }
    }
}
