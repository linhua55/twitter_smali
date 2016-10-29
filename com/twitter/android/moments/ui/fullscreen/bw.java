package com.twitter.android.moments.ui.fullscreen;

import com.twitter.ui.widget.touchintercept.d;

/* compiled from: Twttr */
class bw implements d {
    final /* synthetic */ bt a;

    bw(bt btVar) {
        this.a = btVar;
    }

    public void a() {
        bt.a(this.a).finish();
        bt.b(this.a).a();
        bt.a(this.a).overridePendingTransition(0, 0);
    }
}
