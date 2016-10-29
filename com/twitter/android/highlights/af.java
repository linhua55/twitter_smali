package com.twitter.android.highlights;

import android.animation.Animator;
import com.twitter.android.widget.highlights.StoriesViewPager;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class af extends d {
    final /* synthetic */ StoriesViewPager a;
    final /* synthetic */ ad b;

    af(ad adVar, StoriesViewPager storiesViewPager) {
        this.b = adVar;
        this.a = storiesViewPager;
    }

    public void onAnimationEnd(Animator animator) {
        if (this.a.f()) {
            this.a.e();
        }
    }
}
