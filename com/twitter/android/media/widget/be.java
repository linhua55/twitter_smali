package com.twitter.android.media.widget;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
class be extends HorizontalScrollView {
    private boolean a;
    private boolean b;
    private boolean c;

    be(Context context) {
        super(context);
    }

    public void a() {
        View childAt;
        int scrollX = getScrollX() + (getMeasuredWidth() / 2);
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        int childCount = viewGroup.getChildCount();
        View view = null;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (i2 < childCount) {
            childAt = viewGroup.getChildAt(i2);
            if (childAt.getLeft() <= scrollX && childAt.getRight() >= scrollX) {
                break;
            }
            if (childAt.getRight() < scrollX && scrollX - childAt.getRight() < r1) {
                i = scrollX - childAt.getRight();
            } else if (childAt.getLeft() <= scrollX || childAt.getLeft() - scrollX >= r1) {
                childAt = view;
            } else {
                i = childAt.getLeft() - scrollX;
            }
            i2++;
            view = childAt;
        }
        childAt = view;
        if (childAt != null) {
            smoothScrollBy((childAt.getLeft() + (childAt.getMeasuredWidth() / 2)) - scrollX, 0);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if ((motionEvent.getAction() & NalUnitUtil.EXTENDED_SAR) == 1) {
            if (!this.a) {
                if (this.b) {
                    a(this.c);
                } else {
                    a();
                }
            }
            this.a = false;
            this.b = false;
        }
        return onTouchEvent;
    }

    public void fling(int i) {
        if (getChildCount() > 0) {
            a(i < 0);
        }
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        this.b = z;
        this.c = i == 0;
        super.onOverScrolled(i, i2, z, z2);
    }

    private void a(boolean z) {
        View view;
        int scrollX = getScrollX();
        int measuredWidth = scrollX + getMeasuredWidth();
        ViewGroup viewGroup = (ViewGroup) getChildAt(0);
        int childCount = viewGroup.getChildCount();
        int i;
        View childAt;
        if (z) {
            for (i = 0; i < childCount; i++) {
                childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0 && childAt.getRight() > scrollX) {
                    view = childAt;
                    break;
                }
            }
            view = null;
        } else {
            for (i = childCount - 1; i >= 0; i--) {
                childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0 && childAt.getLeft() < measuredWidth) {
                    view = childAt;
                    break;
                }
            }
            view = null;
        }
        if (view != null) {
            smoothScrollBy(((view.getMeasuredWidth() / 2) + view.getLeft()) - (getScrollX() + (getMeasuredWidth() / 2)), 0);
            this.a = true;
        }
    }
}
