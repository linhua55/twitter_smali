package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewCompat;

/* compiled from: Twttr */
class cz implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ cx b;

    cz(cx cxVar, int i) {
        this.b = cxVar;
        this.a = i;
    }

    public void run() {
        ViewCompat.animate(this.b.a).translationX(0.0f).setDuration((long) this.a).withEndAction(null).start();
    }
}
