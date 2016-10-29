package com.twitter.android.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.twitter.util.math.b;

/* compiled from: Twttr */
class aj extends Animation {
    public final float a;
    public final float b;

    aj(float f, float f2, float f3) {
        this.a = Math.copySign(f2, f);
        this.b = Math.copySign(f3, f);
        setDuration((long) ((int) b.c(f, this.a, this.b)));
    }

    protected void applyTransformation(float f, Transformation transformation) {
        transformation.getMatrix().setTranslate(0.0f, b.b(((float) getDuration()) * f, this.a, this.b));
    }
}
