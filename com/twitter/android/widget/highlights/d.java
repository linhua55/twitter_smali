package com.twitter.android.widget.highlights;

import android.view.animation.Interpolator;

/* compiled from: Twttr */
final class d implements Interpolator {
    d() {
    }

    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * (((f2 * f2) * f2) * f2)) + 1.0f;
    }
}
