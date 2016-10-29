package com.twitter.android.media.widget;

import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.Animation;
import com.twitter.util.ui.c;

/* compiled from: Twttr */
class q extends c {
    final /* synthetic */ View a;
    final /* synthetic */ boolean b;
    final /* synthetic */ OnPreDrawListener c;
    final /* synthetic */ FilterFilmstripView d;

    q(FilterFilmstripView filterFilmstripView, View view, boolean z, OnPreDrawListener onPreDrawListener) {
        this.d = filterFilmstripView;
        this.a = view;
        this.b = z;
        this.c = onPreDrawListener;
    }

    public void onAnimationStart(Animation animation) {
        this.a.setVisibility(0);
    }

    public void onAnimationEnd(Animation animation) {
        if (!this.b) {
            this.a.setVisibility(8);
        }
        if (this.c != null) {
            this.d.getViewTreeObserver().removeOnPreDrawListener(this.c);
        }
    }
}
