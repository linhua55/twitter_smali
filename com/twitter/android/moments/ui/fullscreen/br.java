package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.moments.core.ui.widget.capsule.b;

/* compiled from: Twttr */
public class br implements b {
    private final ViewPager a;
    private final j b;

    public br(ViewPager viewPager, j jVar) {
        this.a = viewPager;
        this.b = jVar;
    }

    public int a() {
        return this.a.getCurrentItem();
    }

    public void a(int i, boolean z) {
        this.a.setCurrentItem(i, z);
    }

    public int b() {
        return this.a.getWidth();
    }

    public MomentPage c() {
        return this.b.c(a());
    }

    public void a(OnPageChangeListener onPageChangeListener) {
        this.a.addOnPageChangeListener(onPageChangeListener);
    }

    public void b(OnPageChangeListener onPageChangeListener) {
        this.a.removeOnPageChangeListener(onPageChangeListener);
    }
}
