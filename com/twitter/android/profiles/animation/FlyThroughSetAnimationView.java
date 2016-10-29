package com.twitter.android.profiles.animation;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.twitter.config.d;

/* compiled from: Twttr */
public class FlyThroughSetAnimationView extends FrameLayout {
    private int a;

    public FlyThroughSetAnimationView(Context context) {
        this(context, null, 0);
    }

    public FlyThroughSetAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlyThroughSetAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private ImageView a(d dVar) {
        View a = dVar.a(getContext());
        a.setY((float) getHeight());
        addView(a);
        new Handler(Looper.getMainLooper()).postDelayed(new i(this, a), dVar.h());
        return a;
    }

    public boolean a(g gVar) {
        if (this.a >= 2) {
            return false;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        for (int i = 0; i < gVar.a() - gVar.b(); i++) {
            d c = gVar.c();
            animatorSet.play(a(c.a(), c.c(), c.f(), a(c))).after(c.d());
        }
        if (d.a("profile_birthday_delight_v2_enabled")) {
            for (int i2 = 0; i2 < gVar.b(); i2++) {
                d d = gVar.d();
                Path b = d.b();
                ImageView a = a(d);
                Animator a2 = a(b, d.c(), d.f(), a, d.g());
                animatorSet.play(a(a, d.i())).after(a2);
                animatorSet.play(a2).after(d.e());
            }
        }
        animatorSet.addListener(new k(this));
        animatorSet.start();
        return true;
    }

    public boolean c() {
        return this.a > 0;
    }

    private Animator a(Path path, long j, TimeInterpolator timeInterpolator, View view) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[]{0.0f, 0.0f};
        Animator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.addUpdateListener(new l(this, pathMeasure, fArr, view));
        ofFloat.addListener(new m(this, view));
        return ofFloat;
    }

    private Animator a(Path path, long j, TimeInterpolator timeInterpolator, ImageView imageView, long j2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float[] fArr = new float[]{0.0f, 0.0f};
        Animator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.addUpdateListener(new n(this, pathMeasure, fArr, imageView));
        ofFloat.addListener(new o(this, imageView, j2));
        return ofFloat;
    }

    protected void b() {
    }

    private Animator a(ImageView imageView, long j) {
        Animator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addUpdateListener(new s(this, ofFloat, imageView));
        return ofFloat;
    }
}
