package com.twitter.library.media.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

/* compiled from: Twttr */
class b implements OnPreparedListener {
    final /* synthetic */ InlineVideoView a;

    b(InlineVideoView inlineVideoView) {
        this.a = inlineVideoView;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        InlineVideoView.c(this.a, 2);
        InlineVideoView.a(this.a, InlineVideoView.b(this.a, InlineVideoView.c(this.a, true)));
        if (InlineVideoView.c(this.a) != null) {
            InlineVideoView.c(this.a).onPrepared(InlineVideoView.d(this.a));
        }
        if (InlineVideoView.e(this.a) != null) {
            InlineVideoView.e(this.a).setEnabled(true);
        }
        InlineVideoView.a(this.a, mediaPlayer.getVideoWidth());
        InlineVideoView.b(this.a, mediaPlayer.getVideoHeight());
        int f = InlineVideoView.f(this.a);
        if (f != 0) {
            this.a.seekTo(f);
        }
        if (InlineVideoView.a(this.a) == 0 || InlineVideoView.b(this.a) == 0) {
            if (InlineVideoView.i(this.a) == 3) {
                this.a.start();
            }
        } else if (InlineVideoView.g(this.a) != InlineVideoView.a(this.a) || InlineVideoView.h(this.a) != InlineVideoView.b(this.a)) {
        } else {
            if (InlineVideoView.i(this.a) == 3) {
                this.a.start();
                if (InlineVideoView.e(this.a) != null) {
                    InlineVideoView.e(this.a).show();
                }
            } else if (!this.a.isPlaying()) {
                if ((f != 0 || this.a.getCurrentPosition() > 0) && InlineVideoView.e(this.a) != null) {
                    InlineVideoView.e(this.a).show(0);
                }
            }
        }
    }
}
