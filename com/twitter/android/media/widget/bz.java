package com.twitter.android.media.widget;

import android.view.View;

/* compiled from: Twttr */
class bz extends br {
    final /* synthetic */ VideoSegmentEditView b;
    private int c;

    bz(VideoSegmentEditView videoSegmentEditView, int i) {
        this.b = videoSegmentEditView;
        super(videoSegmentEditView, i);
    }

    public void c() {
        VideoSegmentListItemView videoSegmentListItemView = (VideoSegmentListItemView) this.b.k.getChildAt(this.b.F - this.b.k.getFirstVisiblePosition());
        if (videoSegmentListItemView != null) {
            this.c = videoSegmentListItemView.getWidth();
            return;
        }
        this.b.e();
        b();
    }

    public void a(float f) {
        View childAt = this.b.k.getChildAt(this.b.F - this.b.k.getFirstVisiblePosition());
        if (childAt != null) {
            childAt.getLayoutParams().width = Math.round(((float) this.c) * (1.0f - f));
            childAt.forceLayout();
            this.b.k.requestLayout();
        } else {
            this.b.e();
            b();
        }
        this.b.k.invalidate();
    }

    public void d() {
        VideoSegmentListItemView videoSegmentListItemView = (VideoSegmentListItemView) this.b.k.getChildAt(this.b.F - this.b.k.getFirstVisiblePosition());
        if (videoSegmentListItemView != null) {
            videoSegmentListItemView.setVisibility(8);
        }
        this.b.e();
    }
}
