package com.twitter.android.media.camera;

import android.hardware.Camera;

/* compiled from: Twttr */
final class s implements Runnable {
    final /* synthetic */ Camera a;

    s(Camera camera) {
        this.a = camera;
    }

    public void run() {
        this.a.release();
    }
}
