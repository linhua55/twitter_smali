package com.twitter.android.widget;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnSeekCompleteListener;

/* compiled from: Twttr */
class dw implements OnSeekCompleteListener {
    final /* synthetic */ ProgressReportingVideoView a;

    dw(ProgressReportingVideoView progressReportingVideoView) {
        this.a = progressReportingVideoView;
    }

    public void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.a.g >= 0) {
            this.a.g = -1;
            if (this.a.f != null) {
                this.a.f.a(this.a);
                this.a.f = null;
            }
        }
    }
}
