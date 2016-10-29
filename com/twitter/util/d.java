package com.twitter.util;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.TextView;

/* compiled from: Twttr */
public class d {
    public static void a(View view, View view2) {
        a(view, view2, 150);
    }

    public static void a(View view, View view2, int i) {
        a(view, i);
        b(view2, i);
    }

    public static ViewPropertyAnimator a(View view) {
        return a(view, 150);
    }

    public static ViewPropertyAnimator a(View view, int i) {
        return a(view, i, null);
    }

    public static ViewPropertyAnimator a(View view, int i, Interpolator interpolator) {
        return a(view, i, interpolator, 4);
    }

    public static ViewPropertyAnimator a(View view, int i, Interpolator interpolator, int i2) {
        if (view.getVisibility() != 0) {
            return null;
        }
        view.clearAnimation();
        ViewPropertyAnimator animate = view.animate();
        animate.withLayer();
        animate.alpha(0.0f).setDuration((long) i).setListener(new e(view, i2));
        if (interpolator == null) {
            return animate;
        }
        animate.setInterpolator(interpolator);
        return animate;
    }

    public static ViewPropertyAnimator b(View view) {
        return b(view, 150);
    }

    public static ViewPropertyAnimator b(View view, int i) {
        if (view.getVisibility() != 0) {
            view.setAlpha(0.0f);
            view.setVisibility(0);
        }
        view.clearAnimation();
        ViewPropertyAnimator animate = view.animate();
        animate.withLayer();
        animate.alpha(1.0f).setDuration((long) i).setListener(null);
        return animate;
    }

    public static void a(View view, int i, float f, Interpolator interpolator) {
        view.setScaleX(f);
        view.setScaleY(f);
        view.setAlpha(0.0f);
        view.setVisibility(0);
        ViewPropertyAnimator animate = view.animate();
        animate.withLayer();
        animate.scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration((long) i).setInterpolator(interpolator).start();
    }

    public static Animator a(View view, long j, Interpolator interpolator) {
        int height = view.getHeight();
        Animator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(interpolator);
        ofFloat.addUpdateListener(new f(view, height));
        ofFloat.addListener(new g(view, height));
        return ofFloat;
    }

    public static void a(ImageView imageView, Drawable drawable) {
        if (drawable != null) {
            b(imageView, drawable);
        }
    }

    public static void b(ImageView imageView, Drawable drawable) {
        a(imageView, drawable, 150);
    }

    public static void a(ImageView imageView, Drawable drawable, int i) {
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 == null || drawable == null || drawable2.getConstantState().equals(drawable.getConstantState())) {
            imageView.setImageDrawable(drawable);
            return;
        }
        drawable2 = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        drawable2.setCrossFadeEnabled(true);
        imageView.setImageDrawable(drawable2);
        drawable2.startTransition(i);
    }

    public static ViewPropertyAnimator a(View view, float f, float f2, int i, Interpolator interpolator) {
        ViewPropertyAnimator interpolator2 = view.animate().scaleX(f).scaleY(f2).setDuration((long) i).setInterpolator(interpolator);
        interpolator2.start();
        return interpolator2;
    }

    public static ViewPropertyAnimator b(View view, float f, float f2, int i, Interpolator interpolator) {
        ViewPropertyAnimator interpolator2 = view.animate().translationX(f).translationY(f2).setDuration((long) i).setInterpolator(interpolator);
        interpolator2.start();
        return interpolator2;
    }

    public static ViewPropertyAnimator a(View view, float f, int i, Interpolator interpolator) {
        return a(view, f, (float) (view.getWidth() / 2), (float) (view.getHeight() / 2), i, interpolator);
    }

    public static ViewPropertyAnimator a(View view, float f, float f2, float f3, int i, Interpolator interpolator) {
        view.setPivotX(f2);
        view.setPivotY(f3);
        ViewPropertyAnimator interpolator2 = view.animate().rotation(f).setDuration((long) i).setInterpolator(interpolator);
        interpolator2.start();
        return interpolator2;
    }

    public static ViewPropertyAnimator b(View view, float f, int i, Interpolator interpolator) {
        ViewPropertyAnimator animate = view.animate();
        animate.withLayer();
        animate.alpha(f).setDuration((long) i).setInterpolator(interpolator);
        animate.start();
        return animate;
    }

    public static ObjectAnimator a(View view, int i, int i2, int i3, Interpolator interpolator) {
        return a(view, i, i2, i3, 0, interpolator);
    }

    public static ObjectAnimator a(View view, int i, int i2, int i3, int i4, Interpolator interpolator) {
        int argb = Color.argb(i2, Color.red(i), Color.green(i), Color.blue(i));
        ObjectAnimator ofInt = ObjectAnimator.ofInt(view, "backgroundColor", new int[]{i, argb});
        ofInt.setEvaluator(new ArgbEvaluator());
        ofInt.setDuration((long) i3);
        ofInt.setInterpolator(interpolator);
        if (i4 != 0) {
            ofInt.setStartDelay((long) i4);
        }
        ofInt.start();
        return ofInt;
    }

    public static ObjectAnimator a(TextView textView, int i, int i2, int i3) {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(textView, "textColor", new int[]{i, i2});
        ofInt.setEvaluator(new ArgbEvaluator());
        ofInt.setDuration((long) i3);
        ofInt.setRepeatMode(2);
        ofInt.setRepeatCount(-1);
        return ofInt;
    }

    public static ViewPropertyAnimatorCompat a(View view, float f, int i, int i2, int i3, Interpolator interpolator) {
        return ViewCompat.animate(view).withLayer().alpha(f).translationX((float) i).translationY((float) i2).setDuration((long) i3).setInterpolator(interpolator);
    }
}
