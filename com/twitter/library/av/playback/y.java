package com.twitter.library.av.playback;

import android.media.MediaPlayer;

/* compiled from: Twttr */
class y implements Runnable {
    final /* synthetic */ MediaPlayer a;
    final /* synthetic */ x b;

    y(x xVar, MediaPlayer mediaPlayer) {
        this.b = xVar;
        this.a = mediaPlayer;
    }

    public void run() {
        this.a.reset();
        this.a.release();
    }
}
