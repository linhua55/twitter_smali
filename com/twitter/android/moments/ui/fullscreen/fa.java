package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.moments.core.ui.widget.capsule.b;

/* compiled from: Twttr */
public class fa implements OnPageChangeListener, ax {
    private final fb a;
    private final b b;

    public fa(fb fbVar, b bVar) {
        this.a = fbVar;
        this.b = bVar;
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
    }

    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            b();
        } else {
            this.a.a(false);
        }
    }

    private void b() {
        MomentPage c = this.b.c();
        if (c == null || !(c.i() || c.j() || c.d() == Type.e || c.d() == Type.a)) {
            this.a.a(true);
        } else {
            this.a.a(false);
        }
    }

    public void a() {
        b();
    }
}
