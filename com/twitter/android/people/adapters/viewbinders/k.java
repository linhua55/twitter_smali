package com.twitter.android.people.adapters.viewbinders;

import android.support.v4.view.ViewPager;
import com.twitter.android.people.adapters.viewbinders.h$com.twitter.android.people.adapters.viewbinders.j;
import com.twitter.android.widget.CarouselRowView;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class k {
    public final A a;
    public final j b;
    public C c;
    public final ViewPager d;
    final /* synthetic */ h e;

    public k(h hVar, CarouselRowView carouselRowView, A a) {
        this.e = hVar;
        this.d = (ViewPager) e.a(carouselRowView.getViewPager());
        this.a = a;
        this.b = new j(hVar);
    }
}
