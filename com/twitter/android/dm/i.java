package com.twitter.android.dm;

import android.content.Context;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LayoutAnimationController;
import com.twitter.util.d;

/* compiled from: Twttr */
public class i {
    public static void a(View view, int i) {
        d.a(view, 1.0f, 0, 0, i, new DecelerateInterpolator()).setListener(new j()).start();
    }

    public static void a(View view, int i, int i2) {
        a(view, i, 0, Math.abs(i2), new AccelerateInterpolator());
    }

    public static void b(View view, int i, int i2) {
        a(view, i, 0, Math.abs(i2) * -1, new AccelerateInterpolator());
    }

    private static void a(View view, int i, int i2, int i3, Interpolator interpolator) {
        d.a(view, 0.0f, i2, i3, i, interpolator).start();
    }

    public static void c(View view, int i, int i2) {
        a(view, i, Math.abs(i2), 0, new DecelerateInterpolator());
    }

    public static void d(View view, int i, int i2) {
        a(view, i, Math.abs(i2) * -1, 0, new DecelerateInterpolator());
    }

    public static LayoutAnimationController a(Context context) {
        Animation loadAnimation = AnimationUtils.loadAnimation(context, 2131034158);
        loadAnimation.setInterpolator(new DecelerateInterpolator());
        loadAnimation.setDuration(300);
        return new LayoutAnimationController(loadAnimation, 0.15f);
    }

    public static void a(View view) {
        d.a(view, 1.01f, 1.01f, 300, new AnticipateOvershootInterpolator(250.0f)).setListener(new k(view, view.getPivotX())).start();
    }
}
