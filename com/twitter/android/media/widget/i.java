package com.twitter.android.media.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Transformation;
import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
class i extends Animation implements AnimationListener {
    final /* synthetic */ CameraShutterBar a;
    private final Drawable[] b;
    private final TransitionDrawable c;

    i(CameraShutterBar cameraShutterBar, TransitionDrawable transitionDrawable, TransitionDrawable transitionDrawable2) {
        this.a = cameraShutterBar;
        this.b = new Drawable[]{transitionDrawable.getDrawable(0), transitionDrawable2.getDrawable(0)};
        this.c = transitionDrawable2;
        setDuration(250);
        setAnimationListener(this);
    }

    protected void applyTransformation(float f, Transformation transformation) {
        int i = (int) ((255.0f * f) + 0.5f);
        this.b[0].setAlpha(255 - i);
        this.b[1].setAlpha(i);
        this.a.invalidate();
    }

    public void onAnimationStart(Animation animation) {
        this.a.setBackgroundDrawable(new LayerDrawable(this.b));
        this.a.m = this;
    }

    public void onAnimationEnd(Animation animation) {
        this.b[1].setAlpha(NalUnitUtil.EXTENDED_SAR);
        this.a.setBackgroundDrawable(this.c);
        this.a.m = null;
    }

    public void onAnimationRepeat(Animation animation) {
    }
}
