package com.twitter.android;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import com.google.android.exoplayer.DefaultLoadControl;

/* compiled from: Twttr */
final class ti extends Animation {
    final int a;
    final int b;
    final View c;

    ti(View view, int i) {
        this.c = view;
        this.a = view.getHeight();
        this.b = i;
        setInterpolator(new DecelerateInterpolator(DefaultLoadControl.DEFAULT_HIGH_BUFFER_LOAD));
    }

    protected void applyTransformation(float f, Transformation transformation) {
        super.applyTransformation(f, transformation);
        this.c.getLayoutParams().height = (int) (((float) this.a) + (((float) (this.b - this.a)) * f));
        this.c.requestLayout();
    }

    public boolean willChangeBounds() {
        return true;
    }
}
