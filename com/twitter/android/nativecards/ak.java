package com.twitter.android.nativecards;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ProgressBar;

/* compiled from: Twttr */
class ak {
    private ProgressBar a;

    private ak() {
    }

    public void a(ViewGroup viewGroup, Context context, LayoutParams layoutParams, int i) {
        if (this.a == null) {
            this.a = new ProgressBar(context, null, i);
            if (layoutParams != null) {
                viewGroup.addView(this.a, layoutParams);
            } else {
                viewGroup.addView(this.a);
            }
            viewGroup.requestLayout();
        }
    }

    public void a() {
        if (this.a != null) {
            this.a.bringToFront();
        }
    }

    public void a(ViewGroup viewGroup) {
        if (this.a != null) {
            viewGroup.removeView(this.a);
            this.a = null;
        }
    }

    public void a(boolean z, int i, int i2, int i3, int i4) {
        if (this.a != null) {
            int i5 = i3 - i;
            int measuredWidth = this.a.getMeasuredWidth();
            if (i5 >= measuredWidth) {
                int measuredHeight = this.a.getMeasuredHeight();
                int i6 = i4 - i2;
                if (i6 >= measuredHeight) {
                    i5 = (i5 - measuredWidth) / 2;
                    i6 = (i6 - measuredHeight) / 2;
                    this.a.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
                }
            }
        }
    }
}
