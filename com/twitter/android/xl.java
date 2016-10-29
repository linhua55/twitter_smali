package com.twitter.android;

import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ListView;
import com.twitter.library.widget.SlidingPanel;

/* compiled from: Twttr */
class xl implements OnPreDrawListener {
    final /* synthetic */ xf a;

    private xl(xf xfVar) {
        this.a = xfVar;
    }

    public boolean onPreDraw() {
        SlidingPanel a = xf.a(this.a);
        ListView b = xf.b(this.a);
        a.setPanelPreviewHeight(Math.min(b.getChildAt(b.getChildCount() - 1).getBottom() + a.getHeader().getHeight(), (int) (((double) this.a.d.getWindowManager().getDefaultDisplay().getHeight()) * 0.7d)));
        a.b();
        this.a.b = false;
        a.getViewTreeObserver().removeOnPreDrawListener(this);
        return false;
    }
}
