package com.twitter.library.media.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;

/* compiled from: Twttr */
class a implements OnVideoSizeChangedListener {
    final /* synthetic */ InlineVideoView a;

    a(InlineVideoView inlineVideoView) {
        this.a = inlineVideoView;
    }

    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        InlineVideoView.a(this.a, mediaPlayer.getVideoWidth());
        InlineVideoView.b(this.a, mediaPlayer.getVideoHeight());
        if (InlineVideoView.a(this.a) != 0 && InlineVideoView.b(this.a) != 0) {
            this.a.requestLayout();
        }
    }
}
