package com.twitter.android.widget;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

/* compiled from: Twttr */
class du implements OnPreparedListener {
    final /* synthetic */ MediaPlayer a;
    final /* synthetic */ ProgressReportingVideoView b;

    du(ProgressReportingVideoView progressReportingVideoView, MediaPlayer mediaPlayer) {
        this.b = progressReportingVideoView;
        this.a = mediaPlayer;
    }

    public void onPrepared(MediaPlayer mediaPlayer) {
        this.b.h = true;
        if (this.b.g >= 0) {
            this.a.seekTo(this.b.g);
        }
        if (this.b.b != null && this.b.e != null) {
            this.b.e.c();
        }
    }
}
