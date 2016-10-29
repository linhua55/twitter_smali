package com.twitter.library.av.playback;

import com.twitter.library.av.aa;

/* compiled from: Twttr */
class ck implements Runnable {
    final /* synthetic */ aa a;
    final /* synthetic */ cb b;

    ck(cb cbVar, aa aaVar) {
        this.b = cbVar;
        this.a = aaVar;
    }

    public void run() {
        this.b.a().a(this.a);
    }
}
