package com.twitter.android.media.camera;

import android.media.AudioManager;
import android.os.Build.VERSION;

/* compiled from: Twttr */
class aj implements Runnable {
    final /* synthetic */ AudioManager a;
    final /* synthetic */ ah b;

    aj(ah ahVar, AudioManager audioManager) {
        this.b = ahVar;
        this.a = audioManager;
    }

    public void run() {
        if (this.b.aa == 2) {
            this.a.setRingerMode(2);
        }
        if (VERSION.SDK_INT < 23) {
            this.a.setStreamMute(1, false);
        } else if (!this.b.ab) {
            this.a.adjustStreamVolume(1, 100, 0);
        }
        this.a.abandonAudioFocus(null);
        this.b.ac = false;
    }
}
