package com.twitter.android.widget;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

/* compiled from: Twttr */
class dv implements OnCompletionListener {
    final /* synthetic */ MediaPlayer a;
    final /* synthetic */ ProgressReportingVideoView b;

    dv(ProgressReportingVideoView progressReportingVideoView, MediaPlayer mediaPlayer) {
        this.b = progressReportingVideoView;
        this.a = mediaPlayer;
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        this.b.k();
        if (this.b.e != null) {
            this.b.e.a(this.a.getDuration());
            this.b.e.f();
        }
    }
}
