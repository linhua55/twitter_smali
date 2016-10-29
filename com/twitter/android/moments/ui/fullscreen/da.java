package com.twitter.android.moments.ui.fullscreen;

import afx;
import android.app.Activity;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.j;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class da extends SimpleOnPageChangeListener implements OnClickListener {
    private final j a;
    private final dd b;
    private MomentPage c;

    public static da a(afx afx, j jVar, Activity activity) {
        return new da(afx, jVar, db.a(activity), new dd(activity));
    }

    public da(afx afx, j jVar, db dbVar, dd ddVar) {
        this.a = jVar;
        this.b = ddVar;
        if (dbVar.a()) {
            afx.a();
            afx.b(this);
            return;
        }
        afx.b();
    }

    public void onPageSelected(int i) {
        this.c = this.a.c(i);
    }

    public void onClick(View view) {
        if (this.c != null) {
            this.b.b(new dc(((Long) e.a(this.c.f())).longValue(), this.c));
        }
    }
}
