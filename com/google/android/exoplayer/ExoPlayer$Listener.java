package com.google.android.exoplayer;

/* compiled from: Twttr */
public interface ExoPlayer$Listener {
    void onPlayWhenReadyCommitted();

    void onPlayerError(ExoPlaybackException exoPlaybackException);

    void onPlayerSeekComplete();

    void onPlayerStateChanged(boolean z, int i);
}
