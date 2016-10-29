package com.twitter.library.media.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

/* compiled from: Twttr */
class c implements OnCompletionListener {
    final /* synthetic */ InlineVideoView a;

    c(InlineVideoView inlineVideoView) {
        this.a = inlineVideoView;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        InlineVideoView.c(this.a, 5);
        InlineVideoView.d(this.a, 5);
        if (InlineVideoView.e(this.a) != null) {
            InlineVideoView.e(this.a).hide();
        }
        if (InlineVideoView.j(this.a) != null) {
            InlineVideoView.j(this.a).onCompletion(InlineVideoView.d(this.a));
        }
    }
}
