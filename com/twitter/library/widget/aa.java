package com.twitter.library.widget;

import android.support.v4.widget.ViewDragHelper.Callback;
import android.view.View;
import android.view.ViewConfiguration;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
class aa extends Callback {
    final /* synthetic */ SlidingUpPanelLayout a;

    private aa(SlidingUpPanelLayout slidingUpPanelLayout) {
        this.a = slidingUpPanelLayout;
    }

    public boolean tryCaptureView(View view, int i) {
        if (SlidingUpPanelLayout.a(this.a)) {
            return false;
        }
        return ((ab) view.getLayoutParams()).a;
    }

    public void onViewDragStateChanged(int i) {
        if (SlidingUpPanelLayout.b(this.a).getViewDragState() == 0) {
            this.a.e();
            if (SlidingUpPanelLayout.c(this.a) < 0.0f) {
                this.a.a(SlidingUpPanelLayout.d(this.a), 4);
            } else if (SlidingUpPanelLayout.c(this.a) == 0.0f) {
                this.a.a(SlidingUpPanelLayout.d(this.a), 2);
            } else if (SlidingUpPanelLayout.c(this.a) == 1.0f) {
                this.a.a(SlidingUpPanelLayout.d(this.a), 1);
            } else if (SlidingUpPanelLayout.c(this.a) > 1.0f) {
                this.a.a(SlidingUpPanelLayout.d(this.a), 0);
            }
        }
    }

    public void onViewCaptured(View view, int i) {
        this.a.f();
    }

    public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
        if (i4 != 0) {
            if (SlidingUpPanelLayout.e(this.a) != null) {
                SlidingUpPanelLayout.d(this.a).dispatchTouchEvent(SlidingUpPanelLayout.e(this.a));
                SlidingUpPanelLayout.e(this.a).recycle();
                SlidingUpPanelLayout.a(this.a, null);
            }
            SlidingUpPanelLayout.a(this.a, i2);
            this.a.invalidate();
        }
    }

    private int a(float f) {
        int i = 2;
        if (f == 0.0f || Math.abs(f) <= ((float) ViewConfiguration.get(this.a.getContext()).getScaledMinimumFlingVelocity())) {
            if (SlidingUpPanelLayout.c(this.a) < 0.0f) {
                i = 4;
            } else if (SlidingUpPanelLayout.c(this.a) < 0.0f || SlidingUpPanelLayout.c(this.a) > 0.5f) {
                i = (SlidingUpPanelLayout.c(this.a) <= 0.5f || SlidingUpPanelLayout.c(this.a) > 1.0f) ? 0 : 1;
            }
        } else if (f < 0.0f) {
            if (SlidingUpPanelLayout.c(this.a) <= AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION) {
                i = 4;
            }
        } else if (SlidingUpPanelLayout.c(this.a) >= 0.25f) {
            i = 0;
        }
        if (i == SlidingUpPanelLayout.f(this.a) || (SlidingUpPanelLayout.g(this.a) & i) != 0 || i == 0) {
            return i;
        }
        float f2 = f == 0.0f ? i > SlidingUpPanelLayout.f(this.a) ? -1.0f : 1.0f : f;
        return SlidingUpPanelLayout.a(this.a, f2, i);
    }

    public void onViewReleased(View view, float f, float f2) {
        int measuredHeight;
        SlidingUpPanelLayout.b(this.a, a(f2));
        switch (SlidingUpPanelLayout.f(this.a)) {
            case Util.TYPE_DASH /*0*/:
                measuredHeight = this.a.getMeasuredHeight() - this.a.getPaddingBottom();
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                measuredHeight = (this.a.getMeasuredHeight() - this.a.getPaddingBottom()) - SlidingUpPanelLayout.h(this.a);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                measuredHeight = (this.a.getMeasuredHeight() - this.a.getPaddingBottom()) - SlidingUpPanelLayout.i(this.a);
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                measuredHeight = this.a.getPaddingTop();
                break;
            default:
                measuredHeight = this.a.getMeasuredHeight();
                break;
        }
        SlidingUpPanelLayout.b(this.a).settleCapturedViewAt(view.getLeft(), measuredHeight);
        this.a.invalidate();
    }

    public int getViewVerticalDragRange(View view) {
        return this.a.getMeasuredHeight();
    }

    public int clampViewPositionVertical(View view, int i, int i2) {
        return Math.max(i, this.a.getPaddingTop());
    }
}
