package com.twitter.refresh.widget;

import android.view.View;
import android.widget.Scroller;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ RefreshableListView a;
    private int b;
    private int c;

    g(RefreshableListView refreshableListView) {
        this.a = refreshableListView;
    }

    void a(int i) {
        this.b = 0;
        this.a.setMode(8);
        this.a.h.abortAnimation();
        this.a.h.startScroll(0, 0, 0, i, 300);
        this.c = this.a.getRefreshHeaderPosition() - this.a.getFirstVisiblePosition();
        this.a.post(this);
    }

    public void run() {
        if (this.a.c(8)) {
            Scroller scroller = this.a.h;
            boolean z = scroller.timePassed() < 300 && scroller.computeScrollOffset();
            int currY = z ? scroller.getCurrY() : scroller.getFinalY();
            int i = this.b - currY;
            this.b = currY;
            this.a.b(this.c, i);
            b(this.c);
            this.a.invalidate();
            if (z) {
                this.a.post(this);
                return;
            }
            this.a.b(8);
            if (this.a.c(32)) {
                this.a.setSelectionFromTop(this.a.H, currY);
            } else if (this.a.c(2)) {
                this.a.f();
            } else {
                this.a.setSelectionFromTop(0, currY);
                this.a.q.onChanged();
            }
            this.a.setRefreshHeaderVisible(false);
        }
    }

    private void b(int i) {
        View childAt = this.a.getChildAt(this.a.getChildCount() - 1);
        if (childAt != null && childAt.getBottom() < (this.a.getBottom() - this.a.getBottomPaddingOffset()) - this.a.getDividerHeight()) {
            childAt = this.a.getChildAt(i);
            if (childAt != null) {
                int top = childAt.getTop();
                super.layoutChildren();
                this.a.b(i, top - childAt.getTop());
            }
        }
    }
}
