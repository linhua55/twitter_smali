package com.twitter.android.revenue.widget;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearSmoothScroller;
import android.util.DisplayMetrics;

/* compiled from: Twttr */
class b extends LinearSmoothScroller {
    final /* synthetic */ a a;

    b(a aVar, Context context) {
        this.a = aVar;
        super(context);
    }

    public PointF computeScrollVectorForPosition(int i) {
        return this.a.computeScrollVectorForPosition(i);
    }

    protected int getHorizontalSnapPreference() {
        return -1;
    }

    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / ((float) displayMetrics.densityDpi);
    }
}
