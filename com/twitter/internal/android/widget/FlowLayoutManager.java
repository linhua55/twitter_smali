package com.twitter.internal.android.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.support.v7.widget.RecyclerView.Recycler;
import android.support.v7.widget.RecyclerView.State;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

/* compiled from: Twttr */
public class FlowLayoutManager extends LayoutManager {
    private final n a;
    private int b;
    private int c;

    public FlowLayoutManager() {
        this.a = new n();
        this.b = -1;
        this.c = -1;
    }

    public /* synthetic */ LayoutParams generateDefaultLayoutParams() {
        return a();
    }

    public /* synthetic */ LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return a(context, attributeSet);
    }

    public /* synthetic */ LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return a(layoutParams);
    }

    public void onLayoutChildren(Recycler recycler, State state) {
        a(recycler, state);
    }

    private void a(Recycler recycler, State state) {
        if (state.getItemCount() == 0) {
            detachAndScrapAttachedViews(recycler);
            return;
        }
        int i;
        int d;
        int d2 = d();
        this.a.d(i());
        a(recycler, state, 0);
        if (this.b >= 0) {
            i = this.b;
            d = d();
            this.b = -1;
        } else {
            d = getChildCount();
            for (i = 0; i < d; i++) {
                View childAt = getChildAt(i);
                if (getDecoratedBottom(childAt) > d2 && getPosition(childAt) != -1) {
                    i = getPosition(childAt);
                    d = getDecoratedTop(childAt);
                    break;
                }
            }
            i = 0;
            d = d2;
        }
        while (!this.a.a(i).a && i - 1 >= 0) {
            i--;
        }
        int i2 = i;
        int i3 = d;
        while (i3 > d2 && i2 - 1 >= 0) {
            i = 0;
            d = 0;
            while (i2 - (i + 1) >= 0) {
                m a = this.a.a(i2 - (i + 1));
                i++;
                d = Math.max(d, a.c);
                if (a.a) {
                    break;
                }
            }
            i2 -= i;
            i3 -= d;
        }
        a(recycler, i3, i2, state.getItemCount());
        if (f() && b() >= 0) {
            a(-b(), recycler, state);
        } else if (a(state) && c() >= 0) {
            a(c(), recycler, state);
        }
    }

    private void a(Recycler recycler, State state, int i) {
        int paddingLeft = getPaddingLeft();
        int itemCount = state.getItemCount();
        while (i < itemCount) {
            a(recycler, paddingLeft, i);
            m a = this.a.a(i);
            if (a.a) {
                paddingLeft = getPaddingLeft();
            }
            paddingLeft += a.b;
            i++;
        }
    }

    private void a(Recycler recycler, int i, int i2) {
        boolean z = false;
        if (!this.a.b(i2)) {
            View viewForPosition = recycler.getViewForPosition(i2);
            measureChildWithMargins(viewForPosition, ((o) viewForPosition.getLayoutParams()).a ? (-getPaddingLeft()) - getPaddingRight() : 0, 0);
            m mVar = new m();
            mVar.b = getDecoratedMeasuredWidth(viewForPosition);
            mVar.c = getDecoratedMeasuredHeight(viewForPosition);
            if (mVar.b + i > i()) {
                z = true;
            }
            mVar.a = z;
            this.a.a(i2, mVar);
            recycler.recycleView(viewForPosition);
        }
    }

    private void a(Recycler recycler, int i, int i2, int i3) {
        int i4;
        int childCount = getChildCount();
        SparseArray sparseArray = new SparseArray(childCount);
        for (i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt = getChildAt(i4);
            if (((o) childAt.getLayoutParams()).viewNeedsUpdate()) {
                detachAndScrapView(childAt, recycler);
            } else {
                sparseArray.put(getPosition(childAt), childAt);
                detachView(childAt);
            }
        }
        int paddingLeft = getPaddingLeft();
        int i5 = 0;
        childCount = i2;
        int i6 = i;
        for (int i7 = i2; i7 < i3; i7++) {
            View view;
            int i8;
            Object obj = sparseArray.get(i7) != null ? 1 : null;
            if (obj != null) {
                view = (View) sparseArray.get(i7);
            } else {
                view = recycler.getViewForPosition(i7);
            }
            boolean z = ((o) view.getLayoutParams()).a;
            measureChildWithMargins(view, z ? (-getPaddingLeft()) - getPaddingRight() : 0, 0);
            m a = this.a.a(i7);
            if (a.a) {
                childCount = i6 + i5;
                paddingLeft = getPaddingLeft();
                if (childCount > e()) {
                    i4 = childCount;
                    childCount = i7;
                    break;
                }
                i8 = 0;
                i5 = childCount;
            } else {
                i8 = i5;
                i5 = i6;
            }
            if (obj != null) {
                attachView(view);
                sparseArray.remove(i7);
            } else {
                addView(view);
            }
            if (z) {
                i6 = 0;
            } else {
                i6 = paddingLeft;
            }
            layoutDecorated(view, i6, i5, i6 + a.b, i5 + a.c);
            paddingLeft += a.b;
            i6 = i5;
            i5 = Math.max(i8, a.c);
            childCount = i7;
        }
        i4 = i6;
        a(recycler, i4, sparseArray, childCount);
        for (i4 = 0; i4 < sparseArray.size(); i4++) {
            recycler.recycleView((View) sparseArray.valueAt(i4));
        }
    }

    private void a(Recycler recycler, int i, SparseArray<View> sparseArray, int i2) {
        int i3 = 0;
        int i4 = 0;
        while (i2 <= a(recycler, (SparseArray) sparseArray)) {
            boolean z;
            int paddingLeft;
            int i5;
            View view = (View) sparseArray.get(i2);
            if (view != null) {
                int paddingRight;
                attachView(view);
                sparseArray.remove(i2);
                boolean z2 = ((o) view.getLayoutParams()).a;
                if (z2) {
                    paddingRight = (-getPaddingLeft()) - getPaddingRight();
                } else {
                    paddingRight = 0;
                }
                measureChildWithMargins(view, paddingRight, 0);
                z = z2;
            } else {
                z = false;
            }
            m a = this.a.a(i2);
            if (a.a) {
                i4 = i + i3;
                paddingLeft = getPaddingLeft();
                i5 = 0;
            } else {
                i5 = i3;
                paddingLeft = i4;
                i4 = i;
            }
            if (view != null) {
                i3 = z ? 0 : paddingLeft;
                layoutDecorated(view, i3, i4, i3 + a.b, i4 + a.c);
            }
            i2++;
            i3 = Math.max(i5, a.c);
            i = i4;
            i4 = a.b + paddingLeft;
        }
    }

    private int a(Recycler recycler, SparseArray<View> sparseArray) {
        int i = 0;
        int i2 = -1;
        while (i < sparseArray.size()) {
            int i3;
            View view = (View) sparseArray.valueAt(i);
            if (((LayoutParams) view.getLayoutParams()).isItemRemoved()) {
                recycler.recycleView(view);
                i3 = i2;
            } else {
                i3 = Math.max(i2, getPosition(view));
            }
            i++;
            i2 = i3;
        }
        return i2;
    }

    public int getWidth() {
        if (this.c >= 0) {
            return this.c;
        }
        return super.getWidth();
    }

    public void onMeasure(Recycler recycler, State state, int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getMode(i2) == 0 ? Integer.MAX_VALUE : MeasureSpec.getSize(i2);
        this.c = size;
        this.a.d(i());
        a(recycler, state, 0);
        setMeasuredDimension(View.resolveSize(size, i), View.resolveSize((a(state, -1, size2, 0, false) + getPaddingTop()) + getPaddingBottom(), i2));
        this.c = -1;
    }

    public boolean canScrollVertically() {
        return true;
    }

    public int scrollVerticallyBy(int i, Recycler recycler, State state) {
        if (state.getItemCount() == 0) {
            return 0;
        }
        if (!f() || !a(state) || b() < 0 || c() < 0) {
            return a(i, recycler, state);
        }
        return 0;
    }

    private int a(int i, Recycler recycler, State state) {
        if (i == 0) {
            return 0;
        }
        int max;
        if (i < 0) {
            max = Math.max(i, -a(state, getPosition(g()), -i, -b(), true));
        } else {
            max = Math.min(i, a(state, getPosition(h()), i, -c(), false));
        }
        offsetChildrenVertical(-max);
        a(recycler, state);
        return max;
    }

    private int a(State state, int i, int i2, int i3, boolean z) {
        int i4 = z ? -1 : 1;
        int i5 = 0;
        int i6 = i;
        while (i3 < i2 && i6 + i4 >= 0 && i6 + i4 < state.getItemCount()) {
            i5 = i6;
            i6 = 0;
            while (i5 + i4 >= 0 && i5 + i4 < state.getItemCount()) {
                i5 += i4;
                m a = this.a.a(i5);
                i6 = Math.max(i6, a.c);
                if (a.a) {
                    i3 += i6;
                    i6 = i5;
                    i5 = a.c;
                    break;
                }
            }
            int i7 = i6;
            i6 = i5;
            i5 = i7;
        }
        return i3 + i5;
    }

    public void scrollToPosition(int i) {
        if (i < getItemCount()) {
            this.b = i;
            requestLayout();
        }
    }

    public void onAdapterChanged(Adapter adapter, Adapter adapter2) {
        removeAllViews();
        this.a.a();
    }

    public void onItemsChanged(RecyclerView recyclerView) {
        removeAllViews();
        this.a.a();
    }

    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        this.a.c(i);
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        this.a.c(i);
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        this.a.c(Math.min(i, i2));
    }

    private int b() {
        return getDecoratedTop(g()) - d();
    }

    private int c() {
        return e() - getDecoratedBottom(h());
    }

    private int d() {
        return getPaddingTop();
    }

    private int e() {
        return d() + j();
    }

    private boolean a(State state) {
        View h = h();
        return h != null && getPosition(h) == state.getItemCount() - 1;
    }

    private boolean f() {
        View g = g();
        return g != null && getPosition(g) == 0;
    }

    private View g() {
        return getChildAt(0);
    }

    private View h() {
        return getChildAt(getChildCount() - 1);
    }

    private int i() {
        return (getWidth() - getPaddingRight()) - getPaddingLeft();
    }

    private int j() {
        return (getHeight() - getPaddingBottom()) - getPaddingTop();
    }

    public o a() {
        return new o(-2, -2);
    }

    public o a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof o) {
            return (o) layoutParams;
        }
        if (layoutParams == null) {
            return a();
        }
        return new o(layoutParams);
    }

    public o a(Context context, AttributeSet attributeSet) {
        return new o(context, attributeSet);
    }

    public boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof o;
    }
}
