package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.moments.core.ui.widget.capsule.b;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
class es implements b {
    final /* synthetic */ eq a;
    private final a b;
    private final Map<OnPageChangeListener, OnPageChangeListener> c;

    es(eq eqVar, a aVar) {
        this.a = eqVar;
        this.b = aVar;
        this.c = new HashMap();
    }

    public MomentPage c() {
        int a = a();
        if (a < 0 || a >= this.b.d().size()) {
            return null;
        }
        return (MomentPage) this.b.d().get(a);
    }

    public int a() {
        return this.a.a(this.b, this.a.c.getCurrentItem());
    }

    public void a(int i, boolean z) {
        this.a.c.setCurrentItem(this.a.b(this.b, i), z);
    }

    public int b() {
        return this.a.c.getWidth();
    }

    public void a(OnPageChangeListener onPageChangeListener) {
        er erVar = new er(this.a, this.b, onPageChangeListener);
        this.c.put(onPageChangeListener, erVar);
        this.a.b.a(erVar);
    }

    public void b(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.c.get(onPageChangeListener);
        if (onPageChangeListener2 != null) {
            this.a.b.b(onPageChangeListener2);
            this.c.remove(onPageChangeListener2);
        }
    }
}
