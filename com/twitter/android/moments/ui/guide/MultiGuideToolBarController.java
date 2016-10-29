package com.twitter.android.moments.ui.guide;

import android.graphics.drawable.Drawable;
import aoa;

@aoa
/* compiled from: Twttr */
class MultiGuideToolBarController {
    private final Drawable a;
    private float b;

    @aoa
    public float getOpaqueAlpha() {
        return this.b;
    }

    @aoa
    public void setOpaqueAlpha(float f) {
        this.b = f;
        this.a.setAlpha(Math.round(255.0f * f));
    }
}
