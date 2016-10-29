package com.twitter.library.av.playback;

import com.google.android.exoplayer.ExoPlaybackException;

/* compiled from: Twttr */
class f implements Runnable {
    final /* synthetic */ ExoPlaybackException a;
    final /* synthetic */ c b;

    f(c cVar, ExoPlaybackException exoPlaybackException) {
        this.b = cVar;
        this.a = exoPlaybackException;
    }

    public void run() {
        this.a.a.onPlayerError(this.a);
    }
}
