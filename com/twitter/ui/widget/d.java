package com.twitter.ui.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
class d extends Animation {
    public int a;
    public int b;
    final /* synthetic */ CircleImageView c;

    private d(CircleImageView circleImageView) {
        this.c = circleImageView;
    }

    protected void applyTransformation(float f, Transformation transformation) {
        this.c.a(this.a, this.b, f);
    }
}
