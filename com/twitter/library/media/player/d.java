package com.twitter.library.media.player;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.widget.Toast;
import cfb;

/* compiled from: Twttr */
class d implements OnErrorListener {
    final /* synthetic */ InlineVideoView a;

    d(InlineVideoView inlineVideoView) {
        this.a = inlineVideoView;
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        cfb.e(InlineVideoView.e(), "Error: " + i + ", " + i2 + ", " + this.a);
        InlineVideoView.c(this.a, -1);
        InlineVideoView.d(this.a, -1);
        InlineVideoView.a(this.a, null);
        if (InlineVideoView.e(this.a) != null) {
            InlineVideoView.e(this.a).hide();
        }
        if ((InlineVideoView.k(this.a) == null || !InlineVideoView.k(this.a).onError(InlineVideoView.d(this.a), i, i2)) && this.a.getWindowToken() != null) {
            CharSequence charSequence;
            if (i == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                charSequence = "This video cannot be played due to invalid progressive playback.";
            } else {
                charSequence = "This video cannot be played due to an unknown error.";
            }
            Toast.makeText(InlineVideoView.l(this.a), charSequence, 0).show();
        }
        return true;
    }
}
