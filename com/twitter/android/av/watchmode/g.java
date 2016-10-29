package com.twitter.android.av.watchmode;

import android.content.Context;
import android.graphics.PointF;
import android.support.v7.widget.LinearSmoothScroller;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.util.DisplayMetrics;
import android.view.View;
import com.twitter.android.av.watchmode.view.WatchModeListItemView;

/* compiled from: Twttr */
public class g extends LinearSmoothScroller {
    private final WatchModeLayoutManager a;
    private final float b;
    private int c;

    public g(Context context, WatchModeLayoutManager watchModeLayoutManager) {
        this(context, watchModeLayoutManager, context.getResources().getDisplayMetrics().density);
    }

    public g(Context context, WatchModeLayoutManager watchModeLayoutManager, float f) {
        super(context);
        this.c = -1;
        this.a = watchModeLayoutManager;
        this.b = f;
    }

    protected int calculateTimeForDeceleration(int i) {
        if (((float) i) / this.b < 200.0f) {
            return (int) Math.ceil(((double) calculateTimeForScrolling(i)) / 0.1d);
        }
        return super.calculateTimeForDeceleration(i);
    }

    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 50.0f / ((float) displayMetrics.densityDpi);
    }

    public PointF computeScrollVectorForPosition(int i) {
        return this.a.computeScrollVectorForPosition(i);
    }

    public int calculateDyToMakeVisible(View view, int i) {
        if (!this.a.canScrollVertically()) {
            return 0;
        }
        int b = b(view);
        int findFirstVisibleItemPosition = this.a.findFirstVisibleItemPosition();
        View findViewByPosition = this.a.findViewByPosition(findFirstVisibleItemPosition);
        if (findViewByPosition == null) {
            return 0;
        }
        if (b != findFirstVisibleItemPosition) {
            int i2;
            if (b < findFirstVisibleItemPosition) {
                int i3 = 0 + (-findViewByPosition.getTop());
                i2 = -1;
                b = i3;
            } else {
                b = (findViewByPosition.getBottom() + this.a.getBottomDecorationHeight(findViewByPosition)) + 0;
                i2 = 1;
            }
            findFirstVisibleItemPosition += i2;
            View findViewByPosition2 = this.a.findViewByPosition(findFirstVisibleItemPosition);
            int i4 = findFirstVisibleItemPosition;
            findFirstVisibleItemPosition = b;
            while (findViewByPosition2 != null && !findViewByPosition2.equals(view)) {
                if (findViewByPosition2 instanceof WatchModeListItemView) {
                    b = ((WatchModeListItemView) findViewByPosition2).getExpandedHeight() + findFirstVisibleItemPosition;
                } else {
                    b = findViewByPosition2.getHeight() + findFirstVisibleItemPosition;
                }
                findFirstVisibleItemPosition = ((b + a(findViewByPosition2)) + this.a.getTopDecorationHeight(findViewByPosition2)) + this.a.getBottomDecorationHeight(findViewByPosition2);
                b = i4 + i2;
                findViewByPosition2 = this.a.findViewByPosition(b);
                i4 = b;
            }
            if (findViewByPosition2 != null) {
                b = a(findViewByPosition2) + findFirstVisibleItemPosition;
                if (i2 == 1) {
                    b += this.a.getTopDecorationHeight(findViewByPosition2);
                } else {
                    b += this.a.getBottomDecorationHeight(findViewByPosition2);
                    b = findViewByPosition2 instanceof WatchModeListItemView ? b + ((WatchModeListItemView) findViewByPosition2).getExpandedHeight() : b + findViewByPosition2.getHeight();
                }
            } else {
                b = findFirstVisibleItemPosition;
            }
            return (-b) * i2;
        } else if (this.a.getItemCount() == 1) {
            return this.a.getPaddingTop() - this.a.getDecoratedTop(view);
        } else {
            return this.a.getPaddingTop() - view.getTop();
        }
    }

    private int a(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            return 0;
        }
        return layoutParams.topMargin + (0 + layoutParams.bottomMargin);
    }

    private int b(View view) {
        if (this.c != -1) {
            return this.c;
        }
        return super.getChildPosition(view);
    }
}
