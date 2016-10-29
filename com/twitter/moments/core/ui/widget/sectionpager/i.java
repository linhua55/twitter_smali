package com.twitter.moments.core.ui.widget.sectionpager;

import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;

/* compiled from: Twttr */
class i extends SimpleOnPageChangeListener {
    static final /* synthetic */ boolean a;
    final /* synthetic */ e b;
    private c c;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    i(e eVar) {
        this.b = eVar;
    }

    public void onPageSelected(int i) {
        c c = ((b) this.b.b.get(i)).c();
        if (!a && c == null) {
            throw new AssertionError();
        } else if (this.c != c) {
            if (this.c != null) {
                this.c.d();
            }
            c.c();
            this.c = c;
        }
    }

    public void a(c cVar) {
        if (this.c == cVar) {
            this.c.d();
        }
        this.c = null;
    }
}
