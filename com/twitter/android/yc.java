package com.twitter.android;

import com.twitter.android.widget.ProgressReportingVideoView;
import com.twitter.android.widget.dz;

/* compiled from: Twttr */
class yc implements dz {
    final /* synthetic */ VideoEditorFragment a;

    yc(VideoEditorFragment videoEditorFragment) {
        this.a = videoEditorFragment;
    }

    public void a(ProgressReportingVideoView progressReportingVideoView) {
        progressReportingVideoView.c();
        progressReportingVideoView.a();
        VideoEditorFragment.a(this.a).a(progressReportingVideoView.getCurrentPosition());
    }
}
