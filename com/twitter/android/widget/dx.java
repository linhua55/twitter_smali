package com.twitter.android.widget;

import android.support.v4.view.ViewCompat;

/* compiled from: Twttr */
class dx implements Runnable {
    final /* synthetic */ ProgressReportingVideoView a;

    dx(ProgressReportingVideoView progressReportingVideoView) {
        this.a = progressReportingVideoView;
    }

    public void run() {
        if (this.a.c != null) {
            if (this.a.e != null) {
                this.a.e.a(this.a.c.getCurrentPosition());
            }
            if (this.a.d != null && this.a.c.isPlaying()) {
                ViewCompat.postOnAnimation(this.a, this.a.d);
            }
        }
    }
}
