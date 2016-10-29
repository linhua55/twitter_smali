package com.twitter.ui.view;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager.OnPageChangeListener;

/* compiled from: Twttr */
class o implements OnPageChangeListener {
    final /* synthetic */ RtlViewPager a;
    private final OnPageChangeListener b;
    private int c;

    private o(RtlViewPager rtlViewPager, OnPageChangeListener onPageChangeListener) {
        this.a = rtlViewPager;
        this.b = onPageChangeListener;
        this.c = -1;
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (!this.a.c) {
            if (f == 0.0f && i2 == 0) {
                this.c = a(i);
            } else {
                this.c = a(i + 1);
            }
            int pageMargin = this.a.getPageMargin() + this.a.getWidth();
            if (i == this.a.getCount() - 1) {
                this.b.onPageScrolled(this.c, 0.0f, 0);
                return;
            }
            OnPageChangeListener onPageChangeListener = this.b;
            int i3 = this.c;
            float f2 = f > 0.0f ? 1.0f - f : f;
            if (f > 0.0f) {
                i2 = pageMargin - i2;
            }
            onPageChangeListener.onPageScrolled(i3, f2, i2);
        }
    }

    public void onPageSelected(int i) {
        if (!this.a.c) {
            this.b.onPageSelected(a(i));
        }
    }

    public void onPageScrollStateChanged(int i) {
        if (!this.a.c) {
            this.b.onPageScrollStateChanged(i);
        }
    }

    private int a(int i) {
        PagerAdapter adapter = this.a.getAdapter();
        return adapter == null ? i : RtlViewPager.a(i, adapter.getCount());
    }
}
