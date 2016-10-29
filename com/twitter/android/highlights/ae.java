package com.twitter.android.highlights;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import com.twitter.android.widget.highlights.StoriesViewPager;

/* compiled from: Twttr */
class ae implements AnimatorUpdateListener {
    final /* synthetic */ StoriesViewPager a;
    final /* synthetic */ ad b;
    private int c;

    ae(ad adVar, StoriesViewPager storiesViewPager) {
        this.b = adVar;
        this.a = storiesViewPager;
        this.c = 0;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Object obj = (this.a.f() || this.a.d()) ? 1 : null;
        if (obj != null) {
            int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue() - this.c;
            if (intValue != 0) {
                this.a.b((float) intValue);
            }
            this.c = intValue + this.c;
            return;
        }
        valueAnimator.cancel();
    }
}
