package com.twitter.library.media.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;

/* compiled from: Twttr */
class e implements OnBufferingUpdateListener {
    final /* synthetic */ InlineVideoView a;

    e(InlineVideoView inlineVideoView) {
        this.a = inlineVideoView;
    }

    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        InlineVideoView.e(this.a, i);
    }
}
