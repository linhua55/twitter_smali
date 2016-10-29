package com.twitter.android.media.camera;

import android.media.MediaRecorder;

/* compiled from: Twttr */
final class t implements Runnable {
    final /* synthetic */ MediaRecorder a;

    t(MediaRecorder mediaRecorder) {
        this.a = mediaRecorder;
    }

    public void run() {
        this.a.release();
    }
}
