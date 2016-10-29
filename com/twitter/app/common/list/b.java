package com.twitter.app.common.list;

import aov;
import cgu;

/* compiled from: Twttr */
class b implements aov<cgu<T>> {
    final /* synthetic */ TwitterListFragment a;

    b(TwitterListFragment twitterListFragment) {
        this.a = twitterListFragment;
    }

    public void a(cgu<T> cgu_T) {
        if (cgu_T == null) {
            this.a.S();
        } else {
            this.a.a(cgu_T);
        }
    }
}
