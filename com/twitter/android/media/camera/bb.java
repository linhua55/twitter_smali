package com.twitter.android.media.camera;

import android.support.v4.view.ViewCompat;

/* compiled from: Twttr */
class bb implements Runnable {
    final /* synthetic */ VideoTextureView a;

    bb(VideoTextureView videoTextureView) {
        this.a = videoTextureView;
    }

    public void run() {
        if (this.a.e == 1) {
            if (this.a.m != null) {
                this.a.m.d(this.a.a.getCurrentPosition());
            }
            ViewCompat.postOnAnimation(this.a, this);
        }
    }
}
