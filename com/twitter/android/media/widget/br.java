package com.twitter.android.media.widget;

import android.os.SystemClock;
import android.support.annotation.InterpolatorRes;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* compiled from: Twttr */
class br implements Runnable {
    private static final Interpolator b;
    boolean a;
    private final Interpolator c;
    private final float d;
    private long e;
    private final View f;
    private boolean g;

    static {
        b = new cb();
    }

    br(View view, int i) {
        this(view, (float) i, b);
    }

    br(View view, int i, @InterpolatorRes int i2) {
        this(view, (float) i, AnimationUtils.loadInterpolator(view.getContext(), i2));
    }

    br(View view, float f, Interpolator interpolator) {
        this.f = view;
        this.d = f;
        this.c = interpolator;
    }

    public void a() {
        this.e = SystemClock.uptimeMillis();
        this.g = false;
        this.a = true;
        c();
        ViewCompat.postOnAnimation(this.f, this);
    }

    public void b() {
        this.g = true;
    }

    public void c() {
    }

    public void a(float f) {
    }

    public void d() {
    }

    public void run() {
        if (this.g) {
            this.a = false;
            return;
        }
        float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.e)) / this.d;
        if (uptimeMillis >= 1.0f) {
            a(1.0f);
            this.a = false;
            d();
            return;
        }
        a(this.c.getInterpolation(uptimeMillis));
        ViewCompat.postOnAnimation(this.f, this);
    }
}
