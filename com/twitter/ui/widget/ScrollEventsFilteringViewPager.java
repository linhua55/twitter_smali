package com.twitter.ui.widget;

import android.content.Context;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import com.twitter.ui.view.RtlViewPager;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public class ScrollEventsFilteringViewPager extends RtlViewPager {
    private final Map<OnPageChangeListener, t> a;

    public ScrollEventsFilteringViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new HashMap();
    }

    public void addOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        t tVar = new t(this, onPageChangeListener);
        this.a.put(onPageChangeListener, tVar);
        super.addOnPageChangeListener(tVar);
    }

    public void a(OnPageChangeListener onPageChangeListener) {
        super.addOnPageChangeListener(onPageChangeListener);
    }

    public void removeOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        if (this.a.containsKey(onPageChangeListener)) {
            super.removeOnPageChangeListener((OnPageChangeListener) this.a.get(onPageChangeListener));
        }
    }
}
