package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Adapter;
import bdd;
import com.twitter.util.collection.MutableMap;
import java.util.Map;
import java.util.Stack;

@Deprecated
/* compiled from: Twttr */
public class FlowLayout extends ViewGroup {
    private int a;
    private int b;
    private final Map<Integer, Stack<View>> c;
    private Adapter d;
    private final DataSetObserver e;

    protected /* synthetic */ LayoutParams generateDefaultLayoutParams() {
        return a();
    }

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return a(attributeSet);
    }

    protected /* synthetic */ LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return a(layoutParams);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = MutableMap.a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.FlowLayout);
        try {
            this.a = obtainStyledAttributes.getDimensionPixelSize(bdd.FlowLayout_horizontalSpacing, 0);
            this.b = obtainStyledAttributes.getDimensionPixelSize(bdd.FlowLayout_verticalSpacing, 0);
            this.e = new k(this);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setAdapter(Adapter adapter) {
        b();
        removeAllViewsInLayout();
        requestLayout();
        this.c.clear();
        this.d = adapter;
        if (this.d != null) {
            this.d.registerDataSetObserver(this.e);
        }
    }

    private void b() {
        if (this.d != null) {
            this.d.unregisterDataSetObserver(this.e);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.c.clear();
        b();
    }

    private void c() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (!this.c.containsKey(Integer.valueOf(layoutParams.a))) {
                this.c.put(Integer.valueOf(layoutParams.a), new Stack());
            }
            ((Stack) this.c.get(Integer.valueOf(layoutParams.a))).push(childAt);
        }
        removeAllViewsInLayout();
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int itemViewType;
        int size = (MeasureSpec.getSize(i) - getPaddingRight()) - getPaddingLeft();
        if (getChildCount() == 0 && this.d != null) {
            for (i3 = 0; i3 < this.d.getCount(); i3++) {
                View view;
                LayoutParams layoutParams;
                itemViewType = this.d.getItemViewType(i3);
                if (!this.c.containsKey(Integer.valueOf(itemViewType))) {
                    view = null;
                } else if (((Stack) this.c.get(Integer.valueOf(itemViewType))).empty()) {
                    view = null;
                } else {
                    view = (View) ((Stack) this.c.get(Integer.valueOf(itemViewType))).pop();
                }
                View view2 = this.d.getView(i3, view, this);
                if (checkLayoutParams(view2.getLayoutParams())) {
                    layoutParams = (LayoutParams) view2.getLayoutParams();
                } else {
                    layoutParams = a();
                    view2.setLayoutParams(layoutParams);
                }
                layoutParams.a = itemViewType;
                addViewInLayout(view2, -1, layoutParams, true);
            }
        }
        i3 = 0;
        int i4 = 0;
        itemViewType = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            measureChild(childAt, i, i2);
            if (childAt.getMeasuredWidth() + i4 > size) {
                itemViewType += i3 + this.b;
                i3 = 0;
                i4 = 0;
            }
            a(childAt, i4, itemViewType);
            i3 = Math.max(i3, childAt.getMeasuredHeight());
            i4 += childAt.getMeasuredWidth() + this.a;
            i5 = Math.max(i5, i4 - this.a);
        }
        setMeasuredDimension(resolveSize((getPaddingRight() + getPaddingLeft()) + i5, i), resolveSize(((i3 + getPaddingTop()) + getPaddingBottom()) + itemViewType, i2));
    }

    private void a(View view, int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        layoutParams.b = getPaddingLeft() + i;
        layoutParams.c = getPaddingTop() + i2;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            childAt.layout(layoutParams.b, layoutParams.c, layoutParams.b + childAt.getMeasuredWidth(), layoutParams.c + childAt.getMeasuredHeight());
        }
    }

    public void setHorizontalSpacing(int i) {
        this.a = i;
    }

    public void setVerticalSpacing(int i) {
        this.b = i;
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    protected LayoutParams a() {
        return new LayoutParams(-2, -2);
    }

    public LayoutParams a(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams a(LayoutParams layoutParams) {
        return new LayoutParams(layoutParams.width, layoutParams.height);
    }
}
