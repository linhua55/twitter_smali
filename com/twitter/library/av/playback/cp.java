package com.twitter.library.av.playback;

import com.twitter.model.av.c;

/* compiled from: Twttr */
class cp implements Runnable {
    final /* synthetic */ c a;
    final /* synthetic */ cb b;

    cp(cb cbVar, c cVar) {
        this.b = cbVar;
        this.a = cVar;
    }

    public void run() {
        this.b.a().a(this.a);
    }
}
