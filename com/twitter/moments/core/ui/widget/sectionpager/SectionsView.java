package com.twitter.moments.core.ui.widget.sectionpager;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import com.twitter.ui.widget.TouchForwardingFrameLayout;
import com.twitter.util.a;

/* compiled from: Twttr */
public class SectionsView extends TouchForwardingFrameLayout {
    static final /* synthetic */ boolean a;
    private k b;
    private int c;

    static {
        a = !SectionsView.class.desiredAssertionStatus();
    }

    public SectionsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.b != null) {
            super.onLayout(z, i, i2, i3, i4);
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                b(getChildAt(i5));
            }
        }
    }

    public void setPositionDelegate(k kVar) {
        this.b = kVar;
    }

    public void a(View view) {
        if (view.getParent() == null) {
            addView(view);
        }
    }

    public void setItemMargin(int i) {
        this.c = i;
    }

    public void a(int i, int i2) {
        if (a()) {
            i2 = -i2;
        }
        setScrollX(a(i) + i2);
    }

    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i) + 4, MeasureSpec.getMode(i)), (((getPaddingLeft() + getPaddingRight()) + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin) + i2, marginLayoutParams.width), getChildMeasureSpec(i3, (((getPaddingTop() + getPaddingBottom()) + marginLayoutParams.topMargin) + marginLayoutParams.bottomMargin) + i4, marginLayoutParams.height));
    }

    @VisibleForTesting
    void b(View view) {
        if (a || this.b != null) {
            int a = a(this.b.a(view));
            view.layout((view.getLeft() + a) - 2, view.getTop(), ((a + view.getLeft()) + view.getWidth()) + 2, view.getBottom());
            return;
        }
        throw new AssertionError();
    }

    @VisibleForTesting
    boolean a() {
        return a.a(getContext());
    }

    private int a(int i) {
        int width = (getWidth() + this.c) * i;
        return a() ? -width : width;
    }
}
