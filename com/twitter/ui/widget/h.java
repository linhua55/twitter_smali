package com.twitter.ui.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
class h extends Animation {
    final /* synthetic */ m a;
    final /* synthetic */ f b;

    h(f fVar, m mVar) {
        this.b = fVar;
        this.a = mVar;
    }

    public void applyTransformation(float f, Transformation transformation) {
        float floor = (float) (Math.floor((double) (this.a.i() / 0.8f)) + 1.0d);
        this.a.b(this.a.e() + ((this.a.f() - this.a.e()) * f));
        this.a.d(((floor - this.a.i()) * f) + this.a.i());
        this.a.e(1.0f - f);
    }
}
