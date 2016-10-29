package com.twitter.library.media.manager;

import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.i;

/* compiled from: Twttr */
class w implements Runnable {
    final /* synthetic */ i a;
    final /* synthetic */ ResourceResponse b;
    final /* synthetic */ v c;

    w(v vVar, i iVar, ResourceResponse resourceResponse) {
        this.c = vVar;
        this.a = iVar;
        this.b = resourceResponse;
    }

    public void run() {
        this.a.a(this.b);
    }
}
