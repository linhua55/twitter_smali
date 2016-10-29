package com.twitter.android.media.widget;

import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.view.View;

/* compiled from: Twttr */
class bt implements Runnable {
    final /* synthetic */ VideoSegmentEditView a;
    private long b;
    private long c;
    private int d;
    private float e;
    private long f;
    private int g;
    private float h;
    private boolean i;

    private bt(VideoSegmentEditView videoSegmentEditView) {
        this.a = videoSegmentEditView;
        this.h = 0.0f;
        this.i = false;
    }

    void a(int i) {
        if (!this.i) {
            this.i = true;
            this.f = SystemClock.uptimeMillis();
            this.b = this.f;
            this.g = i;
            ViewCompat.postOnAnimation(this.a, this);
        }
    }

    void a() {
        this.a.k.removeCallbacks(this);
        this.i = false;
    }

    public void run() {
        int i = 0;
        if (this.i) {
            int firstVisiblePosition = this.a.k.getFirstVisiblePosition();
            int lastVisiblePosition = this.a.k.getLastVisiblePosition();
            int count = this.a.k.getCount();
            int width = this.a.k.getWidth();
            if (this.g == 0) {
                View childAt = this.a.k.getChildAt(0);
                if (childAt == null) {
                    this.i = false;
                    return;
                } else if (firstVisiblePosition == 0 && childAt.getLeft() == 0) {
                    this.i = false;
                    return;
                } else {
                    firstVisiblePosition = this.a.p - this.a.k.getLeft();
                    if (firstVisiblePosition >= 0) {
                        i = firstVisiblePosition;
                    }
                    this.h = this.a.E / ((float) (i + 1));
                }
            } else {
                View childAt2 = this.a.k.getChildAt(lastVisiblePosition - firstVisiblePosition);
                if (childAt2 == null) {
                    this.i = false;
                    return;
                } else if (lastVisiblePosition != count - 1 || childAt2.getRight() > width) {
                    firstVisiblePosition = (width - this.a.p) + this.a.k.getLeft();
                    if (firstVisiblePosition >= 0) {
                        i = firstVisiblePosition;
                    }
                    this.h = (-this.a.E) / ((float) (i + 1));
                } else {
                    this.i = false;
                    return;
                }
            }
            this.c = SystemClock.uptimeMillis();
            this.e = (float) (this.c - this.b);
            this.d = Math.round(this.h * this.e);
            this.a.k.a(this.d, this.d);
            this.b = this.c;
            this.a.b(this.a.getClosestItemPosition());
            if (this.i) {
                ViewCompat.postOnAnimation(this.a, this);
            }
        }
    }
}
