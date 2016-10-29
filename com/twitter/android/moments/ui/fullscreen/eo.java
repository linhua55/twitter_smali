package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager.OnPageChangeListener;

/* compiled from: Twttr */
class eo implements OnPageChangeListener {
    final /* synthetic */ MomentsViewPager a;

    eo(MomentsViewPager momentsViewPager) {
        this.a = momentsViewPager;
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        this.a.d = true;
    }

    public void onPageScrollStateChanged(int i) {
    }
}
