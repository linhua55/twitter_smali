package com.twitter.android.media.widget;

import android.view.View;
import com.google.android.exoplayer.DefaultLoadControl;

/* compiled from: Twttr */
class bx extends br {
    final /* synthetic */ VideoSegmentEditView b;

    bx(VideoSegmentEditView videoSegmentEditView) {
        this.b = videoSegmentEditView;
        super((View) videoSegmentEditView, 100, 2131034164);
    }

    public void a(float f) {
        this.b.v = 1.0f + (DefaultLoadControl.DEFAULT_LOW_BUFFER_LOAD * f);
        this.b.invalidate();
    }
}
