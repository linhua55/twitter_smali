package com.twitter.android.media.widget;

import android.support.v4.view.ViewCompat;
import android.widget.Scroller;

/* compiled from: Twttr */
class ch implements Runnable {
    final /* synthetic */ VideoSegmentListView a;
    private final Scroller b;
    private int c;
    private int d;

    ch(VideoSegmentListView videoSegmentListView) {
        this.a = videoSegmentListView;
        this.b = new Scroller(videoSegmentListView.getContext());
    }

    void a(int i) {
        this.a.B.a();
        a();
        if (i != 0) {
            int i2;
            this.a.d = 3;
            this.d = ((this.a.getWidth() - this.a.getPaddingLeft()) - this.a.getPaddingRight()) - 1;
            this.a.removeCallbacks(this);
            if (i < 0) {
                i2 = Integer.MAX_VALUE;
            } else {
                i2 = 0;
            }
            this.c = i2;
            this.b.fling(i2, 0, i, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            ViewCompat.postOnAnimation(this.a, this);
        }
    }

    void a() {
        if (this.a.d == 3) {
            this.a.d = 0;
            this.a.removeCallbacks(this);
            if (!this.b.isFinished()) {
                this.b.abortAnimation();
                this.a.invalidate();
            }
        }
    }

    public void run() {
        int childCount = this.a.getChildCount();
        if (this.a.b == 0 || childCount == 0) {
            a();
            return;
        }
        Scroller scroller = this.b;
        boolean computeScrollOffset = scroller.computeScrollOffset();
        int currX = scroller.getCurrX();
        childCount = this.c - currX;
        if (childCount > 0) {
            childCount = Math.min(this.d, childCount);
        } else {
            childCount = Math.max(-this.d, childCount);
        }
        boolean a = this.a.a(childCount, childCount);
        if (!computeScrollOffset) {
            a();
        } else if (a) {
            this.c = currX;
            ViewCompat.postOnAnimation(this.a, this);
        } else {
            if (childCount > 0) {
                childCount = this.a.getOverflowLeft();
            } else {
                childCount = -this.a.getOverflowRight();
            }
            if (this.a.a(childCount, childCount)) {
                ViewCompat.postOnAnimation(this.a, this);
            }
        }
    }
}
