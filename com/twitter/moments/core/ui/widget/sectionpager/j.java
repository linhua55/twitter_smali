package com.twitter.moments.core.ui.widget.sectionpager;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager.OnPageChangeListener;

/* compiled from: Twttr */
class j implements OnPageChangeListener {
    final /* synthetic */ e a;
    private int b;

    j(e eVar) {
        this.a = eVar;
    }

    public void onPageScrolled(int i, float f, int i2) {
        if (!this.a.b.isEmpty()) {
            int pageMargin = this.a.c.getPageMargin() + this.a.c.getWidth();
            b bVar = (b) this.a.b.get(i);
            c c = bVar.c();
            int indexOf = c.f().indexOf(bVar);
            int indexOf2 = this.a.a.indexOf(c);
            if (indexOf == c.f().size() - 1) {
                this.a.d.a(indexOf2, i2);
            } else if (this.a.d.getScrollX() % pageMargin != 0) {
                this.a.d.a(indexOf2, 0);
            }
        }
    }

    public void onPageSelected(int i) {
        if (this.b == 0) {
            a();
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.b = i;
        ViewCompat.postInvalidateOnAnimation(this.a.d);
        if (i == 0) {
            a();
        }
    }

    private void a() {
        if (!this.a.b.isEmpty()) {
            this.a.d.a(this.a.a.indexOf(((b) this.a.b.get(this.a.c.getCurrentItem())).c()), 0);
        }
    }
}
