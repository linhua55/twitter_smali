package com.twitter.android.widget;

import android.content.Context;
import android.support.annotation.StyleRes;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import com.twitter.android.av.ad;

/* compiled from: Twttr */
public class AutoPlayableCarouselRowView extends CarouselRowView implements OnPageChangeListener {
    private ad a;

    public AutoPlayableCarouselRowView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AutoPlayableCarouselRowView(Context context, AttributeSet attributeSet, @StyleRes int i) {
        super(context, attributeSet, i);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        ViewPager viewPager = getViewPager();
        if (viewPager != null) {
            viewPager.addOnPageChangeListener(this);
        }
    }

    public void setAutoPlayableItemPositionListener(ad adVar) {
        this.a = adVar;
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        if (this.a != null) {
            this.a.a();
        }
    }

    public void onPageScrollStateChanged(int i) {
        if (this.a != null) {
            this.a.a();
        }
    }
}
