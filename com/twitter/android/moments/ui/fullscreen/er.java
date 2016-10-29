package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.model.moments.viewmodels.a;

/* compiled from: Twttr */
class er implements OnPageChangeListener {
    final /* synthetic */ eq a;
    private final a b;
    private final OnPageChangeListener c;

    er(eq eqVar, a aVar, OnPageChangeListener onPageChangeListener) {
        this.a = eqVar;
        this.b = aVar;
        this.c = onPageChangeListener;
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.c.onPageScrolled(this.a.a(this.b, i), f, i2);
    }

    public void onPageSelected(int i) {
        this.c.onPageSelected(this.a.a(this.b, i));
    }

    public void onPageScrollStateChanged(int i) {
        this.c.onPageScrollStateChanged(i);
    }
}
