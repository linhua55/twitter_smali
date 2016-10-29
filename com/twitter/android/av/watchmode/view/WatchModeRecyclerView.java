package com.twitter.android.av.watchmode.view;

import android.content.Context;
import android.os.Handler;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class WatchModeRecyclerView extends RecyclerView {
    private final int a;
    private final t b;

    public WatchModeRecyclerView(Context context) {
        this(context, null);
    }

    public WatchModeRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WatchModeRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = context.getResources().getDimensionPixelSize(2131690657);
        this.b = new t(new Handler(), this);
    }

    WatchModeRecyclerView(Context context, t tVar, int i) {
        super(context);
        this.a = i;
        this.b = tVar;
    }

    public boolean fling(int i, int i2) {
        LayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null || !(layoutManager instanceof LinearLayoutManager)) {
            return false;
        }
        int i3;
        int i4;
        boolean canScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean canScrollVertically = layoutManager.canScrollVertically();
        if (!canScrollHorizontally || Math.abs(i) < this.a) {
            i3 = 0;
        } else {
            i3 = i;
        }
        if (!canScrollVertically || Math.abs(i2) < this.a) {
            i4 = 0;
        } else {
            i4 = i2;
        }
        if (i3 == 0 && i4 == 0) {
            return false;
        }
        int i5;
        int findFirstVisibleItemPosition = ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition();
        if ((Math.abs(i3) > 0 ? i3 : i4) > 0) {
            i5 = findFirstVisibleItemPosition + 2;
        } else {
            i5 = findFirstVisibleItemPosition - 2;
        }
        this.b.a(Math.max(0, Math.min(getAdapter().getItemCount() - 1, i5)));
        return true;
    }

    protected t getScroller() {
        return this.b;
    }
}
