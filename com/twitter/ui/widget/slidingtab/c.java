package com.twitter.ui.widget.slidingtab;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.View;

/* compiled from: Twttr */
class c implements OnPageChangeListener {
    final /* synthetic */ SlidingTabLayout a;
    private int b;

    private c(SlidingTabLayout slidingTabLayout) {
        this.a = slidingTabLayout;
    }

    public void onPageScrolled(int i, float f, int i2) {
        int childCount = this.a.f.getChildCount();
        if (childCount != 0 && i >= 0 && i < childCount) {
            this.a.f.a(i, f);
            View childAt = this.a.f.getChildAt(i);
            this.a.b(i, childAt != null ? (int) (((float) childAt.getWidth()) * f) : 0);
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.b = i;
    }

    public void onPageSelected(int i) {
        this.a.f.a(i);
        if (this.b == 0) {
            this.a.f.a(i, 0.0f);
            this.a.b(i, 0);
        }
    }
}
