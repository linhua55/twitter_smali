package com.twitter.android;

import com.twitter.android.widget.ProgressReportingVideoView;
import com.twitter.android.widget.dz;

/* compiled from: Twttr */
class ye implements dz {
    final /* synthetic */ VideoEditorFragment a;

    ye(VideoEditorFragment videoEditorFragment) {
        this.a = videoEditorFragment;
    }

    public void a(ProgressReportingVideoView progressReportingVideoView) {
        if (!VideoEditorFragment.c(this.a)) {
            progressReportingVideoView.d();
        }
    }
}
