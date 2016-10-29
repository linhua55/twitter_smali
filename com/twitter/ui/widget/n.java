package com.twitter.ui.widget;

import android.view.animation.AccelerateDecelerateInterpolator;

/* compiled from: Twttr */
class n extends AccelerateDecelerateInterpolator {
    private n() {
    }

    public float getInterpolation(float f) {
        return super.getInterpolation(Math.min(1.0f, 2.0f * f));
    }
}
