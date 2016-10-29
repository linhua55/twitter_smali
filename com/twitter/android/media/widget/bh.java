package com.twitter.android.media.widget;

import android.os.Handler;

/* compiled from: Twttr */
class bh implements Runnable {
    final /* synthetic */ bg a;

    bh(bg bgVar) {
        this.a = bgVar;
    }

    public void run() {
        Handler handler = this.a.c.getHandler();
        if (handler != null && this.a.c.i()) {
            handler.postDelayed(this, 100);
        }
    }
}
