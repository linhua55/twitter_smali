package com.twitter.ui.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
class b extends Animation {
    public int a;
    public int b;
    public float c;
    final /* synthetic */ CircleImageView d;

    private b(CircleImageView circleImageView) {
        this.d = circleImageView;
    }

    protected void applyTransformation(float f, Transformation transformation) {
        this.d.setAnimationProgress(this.c * (1.0f - f));
        this.d.a(this.a, this.b, f);
    }
}
