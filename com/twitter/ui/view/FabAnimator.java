package com.twitter.ui.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.support.annotation.VisibleForTesting;
import android.support.design.widget.FloatingActionButton;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* compiled from: Twttr */
public class FabAnimator {
    private static final TimeInterpolator e;
    private static final TimeInterpolator f;
    final AnimatorSet a;
    final ObjectAnimator b;
    final ObjectAnimator c;
    final h d;

    /* compiled from: Twttr */
    public enum Direction {
        FORWARD(0, 90, 270, 360),
        BACKWARD(0, -90, -270, -360);
        
        public final int rotateInEnd;
        public final int rotateInStart;
        public final int rotateOutEnd;
        public final int rotateOutStart;

        private Direction(int i, int i2, int i3, int i4) {
            this.rotateInStart = i;
            this.rotateInEnd = i2;
            this.rotateOutStart = i3;
            this.rotateOutEnd = i4;
        }
    }

    static {
        e = new DecelerateInterpolator();
        f = new AccelerateInterpolator();
    }

    public static FabAnimator a(h hVar) {
        FloatingActionButton a = hVar.a();
        return new FabAnimator(hVar, ObjectAnimator.ofFloat(a, View.ROTATION, new float[]{0.0f, 0.0f}), ObjectAnimator.ofFloat(a, View.ROTATION, new float[]{0.0f, 0.0f}), new AnimatorSet());
    }

    @VisibleForTesting
    FabAnimator(h hVar, ObjectAnimator objectAnimator, ObjectAnimator objectAnimator2, AnimatorSet animatorSet) {
        this.d = hVar;
        FloatingActionButton a = hVar.a();
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(new Animator[]{ObjectAnimator.ofFloat(a, View.SCALE_X, new float[]{1.0f, 1.1f}), ObjectAnimator.ofFloat(a, View.SCALE_Y, new float[]{1.0f, 1.1f})});
        animatorSet2.setDuration(150);
        animatorSet2.setInterpolator(e);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(new Animator[]{ObjectAnimator.ofFloat(a, View.SCALE_X, new float[]{1.1f, 1.0f}), ObjectAnimator.ofFloat(a, View.SCALE_Y, new float[]{1.1f, 1.0f})});
        animatorSet3.setDuration(150);
        animatorSet3.setInterpolator(e);
        new AnimatorSet().playSequentially(new Animator[]{animatorSet2, animatorSet3});
        this.b = objectAnimator;
        this.b.setDuration(75);
        this.b.setInterpolator(f);
        this.c = objectAnimator2;
        this.c.setDuration(225);
        this.c.setInterpolator(e);
        new AnimatorSet().playSequentially(new Animator[]{this.b, this.c});
        this.a = animatorSet;
        this.a.playTogether(new Animator[]{r0, animatorSet2});
    }

    public void a(int i, Direction direction) {
        this.b.setFloatValues(new float[]{(float) direction.rotateInStart, (float) direction.rotateInEnd});
        this.c.setFloatValues(new float[]{(float) direction.rotateOutStart, (float) direction.rotateOutEnd});
        this.b.removeAllListeners();
        this.b.addListener(new d(this, i));
        this.a.start();
    }
}
