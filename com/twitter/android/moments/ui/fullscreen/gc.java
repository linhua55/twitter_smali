package com.twitter.android.moments.ui.fullscreen;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

/* compiled from: Twttr */
class gc extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ float a;
    final /* synthetic */ gb b;

    gc(gb gbVar, float f) {
        this.b = gbVar;
        this.a = f;
    }

    public void onAnimationStart(View view) {
        if (this.a > 0.0f) {
            view.setVisibility(0);
        }
    }

    public void onAnimationEnd(View view) {
        if (view.getAlpha() == 0.0f) {
            view.setVisibility(8);
        }
    }
}
