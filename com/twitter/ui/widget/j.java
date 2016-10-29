package com.twitter.ui.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
class j extends Animation {
    final /* synthetic */ m a;
    final /* synthetic */ f b;

    j(f fVar, m mVar) {
        this.b = fVar;
        this.a = mVar;
    }

    public void applyTransformation(float f, Transformation transformation) {
        float toRadians = (float) Math.toRadians(((double) this.a.c()) / (6.283185307179586d * this.a.h()));
        float f2 = this.a.f();
        float e = this.a.e();
        float i = this.a.i();
        this.a.c(((0.8f - toRadians) * f.c.getInterpolation(f)) + f2);
        this.a.b((f.b.getInterpolation(f) * 0.8f) + e);
        this.a.d((0.25f * f) + i);
        this.b.c((144.0f * f) + (720.0f * (this.b.m / 5.0f)));
    }
}
