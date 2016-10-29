package com.twitter.android.people.adapters.viewbinders;

import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;

/* compiled from: Twttr */
class i extends SimpleOnPageChangeListener {
    final /* synthetic */ k a;
    final /* synthetic */ h b;

    i(h hVar, k kVar) {
        this.b = hVar;
        this.a = kVar;
    }

    public void onPageSelected(int i) {
        this.b.a(this.a, i);
    }
}
