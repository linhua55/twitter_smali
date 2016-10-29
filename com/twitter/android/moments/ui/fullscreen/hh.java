package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import byi;
import com.twitter.library.client.az;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.j;

/* compiled from: Twttr */
class hh implements OnPageChangeListener {
    static final /* synthetic */ boolean a;
    private final Context b;
    private final j c;
    private final byi d;
    private final az e;
    private final long f;

    static {
        a = !hh.class.desiredAssertionStatus();
    }

    hh(Context context, long j, j jVar, byi byi, az azVar) {
        this.b = context;
        this.f = j;
        this.c = jVar;
        this.d = byi;
        this.e = azVar;
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        MomentPage c = this.c.c(i);
        if (c != null) {
            String h;
            if (c.j()) {
                c = this.c.c(0);
                if (a || c != null) {
                    h = c.h();
                } else {
                    throw new AssertionError();
                }
            }
            h = c.h();
            this.e.a(new hi(this, this.b, h));
        }
    }

    public void onPageScrollStateChanged(int i) {
    }
}
