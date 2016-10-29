package com.twitter.moments.core.ui.widget.sectionpager;

import android.support.annotation.DimenRes;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import any;
import com.twitter.ui.widget.ScrollEventsFilteringViewPager;
import com.twitter.util.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class e {
    private final List<c> a;
    private final List<b> b;
    private final ScrollEventsFilteringViewPager c;
    private final SectionsView d;
    private final h e;
    private final j f;
    private final i g;

    public e(ScrollEventsFilteringViewPager scrollEventsFilteringViewPager, SectionsView sectionsView) {
        this.a = new ArrayList();
        this.b = new ArrayList();
        this.c = scrollEventsFilteringViewPager;
        this.d = sectionsView;
        if (any.a().b() >= 2013) {
            scrollEventsFilteringViewPager.setOffscreenPageLimit(2);
        } else {
            scrollEventsFilteringViewPager.setOffscreenPageLimit(1);
        }
        this.e = new h(this);
        this.f = new j(this);
        this.g = new i(this);
        this.c.a(this.f);
        this.e.registerDataSetObserver(new f(this));
        this.c.addOnPageChangeListener(this.e);
        this.c.addOnPageChangeListener(this.g);
        this.d.setPositionDelegate(new g(this));
    }

    private boolean d() {
        return a.a(this.c.getContext());
    }

    public void a() {
        this.d.setVisibility(8);
    }

    public void b() {
        this.d.setVisibility(0);
    }

    public void a(OnPageChangeListener onPageChangeListener) {
        this.c.addOnPageChangeListener(onPageChangeListener);
    }

    public void b(OnPageChangeListener onPageChangeListener) {
        this.c.removeOnPageChangeListener(onPageChangeListener);
    }

    public void a(List<c> list) {
        this.a.addAll(list);
        for (c cVar : list) {
            if (cVar == null) {
                throw new IllegalArgumentException("Cannot add null section");
            }
            this.b.addAll(cVar.f());
        }
        this.e.notifyDataSetChanged();
    }

    public void b(List<c> list) {
        this.a.removeAll(list);
        for (c f : list) {
            for (b remove : f.f()) {
                this.b.remove(remove);
            }
        }
        this.e.notifyDataSetChanged();
    }

    public void a(@DimenRes int i) {
        int dimensionPixelOffset = this.c.getResources().getDimensionPixelOffset(i);
        this.c.setPageMargin(dimensionPixelOffset);
        this.d.setItemMargin(dimensionPixelOffset);
    }

    public h c() {
        return this.e;
    }
}
