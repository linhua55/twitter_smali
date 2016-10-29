package com.twitter.android.moments.ui.fullscreen;

import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.util.collection.n;
import com.twitter.util.object.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
class ay implements OnPageChangeListener, ep {
    private final List<as> a;
    private final ViewPager b;
    private final eq c;
    private final b<a, as> d;
    private final Handler e;

    ay(ViewPager viewPager, eq eqVar, b<a, as> bVar) {
        this.a = new ArrayList();
        this.b = viewPager;
        this.c = eqVar;
        this.d = bVar;
        this.e = new Handler(Looper.getMainLooper());
        this.b.addOnPageChangeListener(this);
    }

    public void a(as asVar) {
        this.a.add(asVar);
    }

    public boolean a() {
        if (this.a.isEmpty()) {
            return false;
        }
        return ((as) this.a.get(this.c.a(this.b.getCurrentItem()))).a();
    }

    public void a(a aVar) {
        int a = this.c.a(this.b.getCurrentItem());
        if (a < this.a.size()) {
            Collection<as> a2 = n.a(this.a.subList(a + 1, this.a.size()));
            for (as b : a2) {
                b.b();
            }
            this.a.removeAll(a2);
        }
        this.a.add((as) this.d.a(aVar));
    }

    public void b() {
        int currentItem = this.b.getCurrentItem();
        if (this.c.a(currentItem) < this.a.size() - 1) {
            this.b.setCurrentItem(this.c.b(currentItem));
        }
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0 && this.c.a(this.b.getCurrentItem()) > 0) {
            this.e.post(new az(this));
        }
    }

    public as c() {
        if (this.c.a()) {
            return null;
        }
        return (as) this.a.get(this.c.a(this.b.getCurrentItem()));
    }

    public a d() {
        as c = c();
        if (c != null) {
            return c.c();
        }
        return null;
    }

    public void e() {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            ((as) this.a.get(size)).b();
        }
    }
}
