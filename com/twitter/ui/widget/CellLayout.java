package com.twitter.ui.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.twitter.util.ak;
import com.twitter.util.ui.j;

/* compiled from: Twttr */
public abstract class CellLayout extends ViewGroup {
    protected boolean f_;

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return a(attributeSet);
    }

    public CellLayout(Context context) {
        this(context, null);
    }

    public CellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CellLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f_ = ak.f();
    }

    public void setRenderRtl(boolean z) {
        if (this.f_ != z) {
            this.f_ = z;
            requestLayout();
        }
    }

    protected void a(Rect rect, CellLayoutParams cellLayoutParams) {
        j.a(this.f_, rect, CellLayoutParams.a(cellLayoutParams), cellLayoutParams);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                Rect b = CellLayoutParams.b(childAt);
                childAt.layout(b.left, b.top, b.right, b.bottom);
            }
        }
    }

    public CellLayoutParams a(AttributeSet attributeSet) {
        return new CellLayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new CellLayoutParams(layoutParams);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new CellLayoutParams(-1, -2);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof CellLayoutParams;
    }
}
