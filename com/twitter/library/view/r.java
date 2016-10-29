package com.twitter.library.view;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.ViewParent;

/* compiled from: Twttr */
public class r implements OnPageChangeListener {
    private final ViewParent a;
    private final int b;

    public r(ViewParent viewParent, int i) {
        this.a = viewParent;
        this.b = i;
    }

    public void onPageSelected(int i) {
        this.a.requestDisallowInterceptTouchEvent(false);
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (i2 >= this.b) {
            this.a.requestDisallowInterceptTouchEvent(true);
        }
    }

    public void onPageScrollStateChanged(int i) {
    }
}
