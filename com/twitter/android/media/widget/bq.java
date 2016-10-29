package com.twitter.android.media.widget;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class bq implements AnimatorUpdateListener {
    final /* synthetic */ VideoSegmentListView a;
    final /* synthetic */ bp b;

    bq(bp bpVar, VideoSegmentListView videoSegmentListView) {
        this.b = bpVar;
        this.a = videoSegmentListView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.invalidate();
    }
}
