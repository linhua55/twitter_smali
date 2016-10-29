package com.twitter.android.moments.ui.fullscreen;

import afx;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.viewmodels.j;

/* compiled from: Twttr */
public class gf extends SimpleOnPageChangeListener implements OnClickListener {
    private final afx a;
    private final j b;
    private final dm c;

    public gf(afx afx, j jVar, dm dmVar) {
        this.a = afx;
        this.b = jVar;
        this.c = dmVar;
    }

    public void onPageSelected(int i) {
        if (this.b.c(i) != null) {
            this.a.a(this);
        }
    }

    public void onClick(View view) {
        this.c.c();
    }
}
