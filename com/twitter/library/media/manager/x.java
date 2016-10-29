package com.twitter.library.media.manager;

import com.twitter.util.concurrent.ObservablePromise;

/* compiled from: Twttr */
class x extends ObservablePromise<RESP> {
    final /* synthetic */ ag a;
    final /* synthetic */ v b;

    x(v vVar, ag agVar) {
        this.b = vVar;
        this.a = agVar;
    }

    protected void bi_() {
        super.bi_();
        this.b.sendMessageAtFrontOfQueue(this.b.obtainMessage(4, this.a));
        this.b.removeMessages(1, this.a);
    }
}
