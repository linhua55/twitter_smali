package com.twitter.android.widget;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;

/* compiled from: Twttr */
class dt implements OnErrorListener {
    final /* synthetic */ ProgressReportingVideoView a;

    dt(ProgressReportingVideoView progressReportingVideoView) {
        this.a = progressReportingVideoView;
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return true;
    }
}
