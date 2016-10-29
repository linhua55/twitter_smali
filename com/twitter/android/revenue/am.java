package com.twitter.android.revenue;

import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import cbo;
import com.twitter.library.api.PromotedEvent;
import com.twitter.model.core.Tweet;
import defpackage.cbl;
import defpackage.cbm;
import defpackage.cbp;

/* compiled from: Twttr */
class am extends SimpleOnPageChangeListener {
    private int a;
    private final Tweet b;
    private final cbo<cbp> c;

    am(Tweet tweet, cbo<cbp> cbo_cbp) {
        this.b = tweet;
        this.c = cbo_cbp;
    }

    public void onPageSelected(int i) {
        if (this.a != i) {
            a(this.a < i);
        }
        this.a = i;
    }

    void a(int i) {
        this.a = i;
    }

    private void a(boolean z) {
        if (this.b.f != null) {
            this.c.a(cbp.a(PromotedEvent.aC, this.b.f).d(cbm.a(cbl.a(z ? 2 : 1))).a());
        }
    }
}
