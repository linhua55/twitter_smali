package com.twitter.android.media.camera;

import android.media.MediaRecorder;
import android.media.MediaRecorder.OnInfoListener;

/* compiled from: Twttr */
class aw implements OnInfoListener {
    final /* synthetic */ av a;

    aw(av avVar) {
        this.a = avVar;
    }

    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        if (i == 800) {
            this.a.a();
        }
    }
}
