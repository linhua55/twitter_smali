package com.twitter.internal.android.widget;

import android.widget.Scroller;

/* compiled from: Twttr */
class u implements Runnable {
    final /* synthetic */ HorizontalListView a;
    private final Scroller b;
    private int c;
    private int d;

    u(HorizontalListView horizontalListView) {
        this.a = horizontalListView;
        this.b = new Scroller(horizontalListView.getContext());
    }

    public void a(int i) {
        if (i != 0) {
            HorizontalListView.a(this.a, 4);
            this.d = ((this.a.getWidth() - this.a.getPaddingLeft()) - this.a.getPaddingRight()) - 1;
            this.a.removeCallbacks(this);
            int i2 = i < 0 ? Integer.MAX_VALUE : 0;
            this.c = i2;
            this.b.fling(i2, 0, i, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            this.a.post(this);
            HorizontalListView.h(this.a);
        }
    }

    public void a() {
        if (HorizontalListView.a(this.a) == 4) {
            HorizontalListView.a(this.a, -1);
            this.a.removeCallbacks(this);
            if (!this.b.isFinished()) {
                this.b.abortAnimation();
                this.a.invalidate();
            }
            HorizontalListView.h(this.a);
        }
    }

    public void run() {
        int childCount = this.a.getChildCount();
        if (this.a.d == 0 || childCount == 0) {
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
        boolean b = HorizontalListView.b(this.a, childCount);
        if (computeScrollOffset) {
            if (b) {
                this.c = currX;
                this.a.post(this);
            } else {
                if (childCount > 0) {
                    childCount = HorizontalListView.i(this.a) + HorizontalListView.j(this.a);
                } else {
                    childCount = -(HorizontalListView.k(this.a) + HorizontalListView.j(this.a));
                }
                HorizontalListView.b(this.a, childCount);
                a();
            }
            HorizontalListView.l(this.a);
            return;
        }
        a();
    }
}
