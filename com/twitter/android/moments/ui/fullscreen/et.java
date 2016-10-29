package com.twitter.android.moments.ui.fullscreen;

import afx;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.MomentPage.Type;
import com.twitter.model.moments.viewmodels.MomentTweetStreamingVideoPage;
import com.twitter.model.moments.viewmodels.j;

/* compiled from: Twttr */
class et extends SimpleOnPageChangeListener {
    static final /* synthetic */ boolean a;
    private final afx b;
    private final k c;
    private final j d;
    private boolean e;

    static {
        a = !et.class.desiredAssertionStatus();
    }

    et(afx afx, k kVar, j jVar) {
        this.b = afx;
        this.c = kVar;
        this.d = jVar;
    }

    private boolean a(int i) {
        if (this.c.a(i) != null) {
            return true;
        }
        MomentPage c = this.d.c(i);
        if (a || c != null) {
            boolean z = c.d() == Type.c && ((MomentTweetStreamingVideoPage) c).q();
            return z;
        }
        throw new AssertionError();
    }

    public void onPageSelected(int i) {
        if (i >= 0 && i < this.d.b()) {
            if (a(i)) {
                this.b.a(this.e);
            } else {
                this.b.b(this.e);
            }
        }
        this.e = true;
    }
}
