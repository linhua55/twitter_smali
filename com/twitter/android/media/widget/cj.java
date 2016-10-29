package com.twitter.android.media.widget;

import android.os.SystemClock;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* compiled from: Twttr */
class cj implements Runnable {
    final /* synthetic */ VideoSegmentListView a;
    private final Interpolator b;
    private int c;
    private int d;
    private int e;
    private float f;
    private boolean g;

    cj(VideoSegmentListView videoSegmentListView) {
        this.a = videoSegmentListView;
        this.b = AnimationUtils.loadInterpolator(videoSegmentListView.getContext(), 2131034164);
    }

    void a(int i) {
        a();
        this.a.z.a();
        this.e = b(i);
        if (this.e != 0) {
            this.c = i;
            this.f = 0.0f;
            this.d = (int) SystemClock.elapsedRealtime();
            this.g = true;
            ViewCompat.postOnAnimation(this.a, this);
        }
    }

    void a() {
        if (this.g) {
            this.g = false;
            this.a.removeCallbacks(this);
        }
    }

    public void run() {
        int left;
        int firstVisiblePosition = this.a.getFirstVisiblePosition();
        if (this.c >= firstVisiblePosition && this.c <= this.a.getLastVisiblePosition()) {
            View childAt = this.a.getChildAt(this.c - firstVisiblePosition);
            if (childAt.getLeft() >= this.a.getPaddingLeft() + this.a.k && childAt.getRight() <= (this.a.getWidth() - this.a.getPaddingRight()) - this.a.k) {
                this.g = false;
                return;
            }
        }
        float elapsedRealtime = ((float) (((int) SystemClock.elapsedRealtime()) - this.d)) / 300.0f;
        int interpolation = (int) ((((float) this.e) * this.b.getInterpolation(Math.min(elapsedRealtime, 1.0f))) - this.f);
        this.f += (float) interpolation;
        if (this.e > 0 && this.a.getFirstVisiblePosition() == 0) {
            left = this.a.getChildAt(0).getLeft();
            if (left < this.a.getPaddingLeft() + this.a.k) {
                left = (this.a.getPaddingLeft() + this.a.k) - left;
                if (interpolation > left) {
                    this.a.a(left, left);
                    this.g = false;
                    return;
                }
            }
        }
        if (this.e < 0 && this.a.getLastVisiblePosition() == this.a.b - 1) {
            left = this.a.getChildAt(this.a.getChildCount() - 1).getRight();
            int width = (this.a.getWidth() - this.a.getPaddingRight()) - this.a.k;
            if (left > width) {
                left = width - left;
                if (interpolation < left) {
                    this.a.a(left, left);
                    this.g = false;
                    return;
                }
            }
        }
        if (this.a.a(interpolation, interpolation) || elapsedRealtime < 1.0f) {
            ViewCompat.postOnAnimation(this.a, this);
        }
    }

    private int b(int i) {
        int paddingLeft = this.a.getPaddingLeft() + this.a.k;
        int width = (this.a.getWidth() - this.a.getPaddingRight()) - this.a.k;
        int firstVisiblePosition = this.a.getFirstVisiblePosition();
        if (i < firstVisiblePosition) {
            return (paddingLeft + ((firstVisiblePosition - i) * (this.a.j + this.a.s))) - this.a.getChildAt(0).getLeft();
        }
        int lastVisiblePosition = this.a.getLastVisiblePosition();
        if (i > lastVisiblePosition) {
            View childAt = this.a.getChildAt(this.a.getChildCount() - 1);
            if (childAt != null) {
                return (((lastVisiblePosition - i) * (this.a.j + this.a.s)) + width) - childAt.getRight();
            }
            return 0;
        } else if (this.a.getChildCount() == 1) {
            return 0;
        } else {
            View childAt2 = this.a.getChildAt(i - firstVisiblePosition);
            if (childAt2.getLeft() < paddingLeft) {
                return paddingLeft - childAt2.getLeft();
            }
            if (childAt2.getRight() > width) {
                return width - childAt2.getRight();
            }
            return 0;
        }
    }
}
