package com.twitter.android.media.widget;

import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
class y implements OnPreDrawListener {
    final /* synthetic */ View a;
    final /* synthetic */ FilterFilmstripView b;

    y(FilterFilmstripView filterFilmstripView, View view) {
        this.b = filterFilmstripView;
        this.a = view;
    }

    public boolean onPreDraw() {
        int measuredWidth = this.a.getMeasuredWidth() - this.b.getMeasuredWidth();
        if (measuredWidth < 0) {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.b.fullScroll(66);
        return this.b.getScrollX() == measuredWidth;
    }
}
