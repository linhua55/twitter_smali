package com.twitter.android.media.widget;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class x extends d {
    final /* synthetic */ FilterFilmstripView a;

    x(FilterFilmstripView filterFilmstripView) {
        this.a = filterFilmstripView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.j = false;
    }
}
