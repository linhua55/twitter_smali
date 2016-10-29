package com.twitter.android.media.camera;

import android.hardware.Camera;
import bbn;

/* compiled from: Twttr */
class q implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ m b;

    q(m mVar, int i) {
        this.b = mVar;
        this.a = i;
    }

    public void run() {
        Camera c = this.b.j;
        if (c != null) {
            synchronized (c) {
                try {
                    c.setDisplayOrientation(this.b.e(this.a));
                } catch (Throwable e) {
                    bbn.a(e);
                }
            }
        }
    }
}
