package com.twitter.library.av.playback;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer.ExoPlaybackException;
import com.google.android.exoplayer.ExoPlayer.Listener;

/* compiled from: Twttr */
public class c implements Listener {
    private final Listener a;
    private final Handler b;

    c(Listener listener, Handler handler) {
        this.a = listener;
        this.b = handler;
    }

    public void onPlayerStateChanged(boolean z, int i) {
        a(new d(this, z, i));
    }

    public void onPlayWhenReadyCommitted() {
        a(new e(this));
    }

    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        a(new f(this, exoPlaybackException));
    }

    public void onPlayerSeekComplete() {
        a(new g(this));
    }

    private void a(Runnable runnable) {
        if (Looper.myLooper() == this.b.getLooper()) {
            runnable.run();
        } else {
            this.b.post(runnable);
        }
    }
}
