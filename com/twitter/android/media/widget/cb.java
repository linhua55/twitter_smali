package com.twitter.android.media.widget;

import android.view.animation.Interpolator;

/* compiled from: Twttr */
class cb implements Interpolator {
    private cb() {
    }

    public float getInterpolation(float f) {
        if (f < 0.05f) {
            return (10.526316f * f) * f;
        }
        if (f < 0.95f) {
            return -0.02631579f + (1.0526316f * f);
        }
        float f2 = 1.0f - f;
        return 1.0f - (f2 * (10.526316f * f2));
    }
}
