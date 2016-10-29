package com.twitter.android.people.adapters.viewbinders;

import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;

/* compiled from: Twttr */
class s extends SimpleOnPageChangeListener {
    final /* synthetic */ t a;
    final /* synthetic */ q b;

    s(q qVar, t tVar) {
        this.b = qVar;
        this.a = tVar;
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.b.a(this.a);
    }
}
