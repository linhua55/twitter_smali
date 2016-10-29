package com.twitter.android.media.widget;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class w extends d {
    final /* synthetic */ FilterFilmstripView a;

    w(FilterFilmstripView filterFilmstripView) {
        this.a = filterFilmstripView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setVisibility(8);
        this.a.setTranslationY(0.0f);
        this.a.setAlpha(1.0f);
    }
}
