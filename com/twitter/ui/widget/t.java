package com.twitter.ui.widget;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;

/* compiled from: Twttr */
class t implements OnPageChangeListener {
    final /* synthetic */ ScrollEventsFilteringViewPager a;
    private final OnPageChangeListener b;

    t(ScrollEventsFilteringViewPager scrollEventsFilteringViewPager, OnPageChangeListener onPageChangeListener) {
        this.a = scrollEventsFilteringViewPager;
        this.b = onPageChangeListener;
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (f > 0.995f && i + 1 < a()) {
            i++;
            i2 = 0;
            f = 0.0f;
        } else if (f < 0.005f) {
            i2 = 0;
            f = 0.0f;
        }
        this.b.onPageScrolled(i, f, i2);
    }

    public void onPageSelected(int i) {
        this.b.onPageSelected(i);
    }

    public void onPageScrollStateChanged(int i) {
        this.b.onPageScrollStateChanged(i);
    }

    private int a() {
        PagerAdapter adapter = this.a.getAdapter();
        if (adapter == null) {
            return 0;
        }
        return adapter.getCount();
    }
}
