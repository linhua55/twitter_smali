package com.twitter.ui.widget;

import android.view.animation.AccelerateDecelerateInterpolator;

/* compiled from: Twttr */
class l extends AccelerateDecelerateInterpolator {
    private l() {
    }

    public float getInterpolation(float f) {
        return super.getInterpolation(Math.max(0.0f, (f - 0.5f) * 2.0f));
    }
}
