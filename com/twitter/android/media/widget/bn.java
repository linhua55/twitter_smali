package com.twitter.android.media.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class bn implements OnTouchListener {
    final /* synthetic */ VideoSegmentEditView a;

    bn(VideoSegmentEditView videoSegmentEditView) {
        this.a = videoSegmentEditView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.a.a(motionEvent);
    }
}
