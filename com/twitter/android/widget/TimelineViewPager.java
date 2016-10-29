package com.twitter.android.widget;

import android.content.Context;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import com.google.android.exoplayer.C;
import com.twitter.util.object.b;

/* compiled from: Twttr */
public class TimelineViewPager extends ViewPager {
    private int a;
    private OnPageChangeListener b;
    private final bo c;

    public TimelineViewPager(Context context) {
        this(context, null);
    }

    public TimelineViewPager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bo.a);
    }

    public TimelineViewPager(Context context, AttributeSet attributeSet, b<View, bo> bVar) {
        super(context, attributeSet);
        this.c = (bo) bVar.a(this);
    }

    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        super.setOnPageChangeListener(onPageChangeListener);
        this.b = onPageChangeListener;
    }

    public void setMinimumHeight(int i) {
        this.a = i;
        super.setMinimumHeight(i);
    }

    public boolean canScrollHorizontally(int i) {
        return true;
    }

    public void setCurrentItem(int i) {
        int currentItem = getCurrentItem();
        super.setCurrentItem(i);
        if (currentItem == i && this.b != null) {
            this.b.onPageSelected(i);
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = MeasureSpec.getSize(i);
        PagerAdapter adapter = getAdapter();
        if (adapter != null && adapter.getCount() > 0 && size > 0) {
            size = Math.max((((int) (((float) size) * adapter.getPageWidth(0))) - getPaddingLeft()) - getPaddingRight(), 0);
        }
        int childCount = getChildCount();
        int i3 = this.a;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            childAt.measure(MeasureSpec.makeMeasureSpec(size, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(0, 0));
            i3 = Math.max(i3, childAt.getMeasuredHeight());
        }
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.c.a(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
