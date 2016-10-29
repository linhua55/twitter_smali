package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class f extends Drawable implements Animatable {
    private static final Interpolator a;
    private static final Interpolator b;
    private static final Interpolator c;
    private static final Interpolator d;
    private static final int[] e;
    private final List<Animation> f;
    private final m g;
    private final Callback h;
    private float i;
    private final Resources j;
    private final View k;
    private Animation l;
    private float m;
    private double n;
    private double o;
    private Animation p;
    private boolean q;

    static {
        a = new LinearInterpolator();
        b = new l();
        c = new n();
        d = new AccelerateDecelerateInterpolator();
        e = new int[]{-16777216};
    }

    public f(Context context, View view) {
        this.f = new ArrayList();
        this.h = new g(this);
        this.k = view;
        this.j = context.getResources();
        this.g = new m(this.h);
        this.g.a(e);
        a(1);
        c();
    }

    private void a(double d, double d2, double d3, double d4, float f, float f2) {
        m mVar = this.g;
        float f3 = this.j.getDisplayMetrics().density;
        this.n = ((double) f3) * d;
        this.o = ((double) f3) * d2;
        mVar.a(((float) d4) * f3);
        mVar.a(((double) f3) * d3);
        mVar.b(0);
        mVar.a(f * f3, f3 * f2);
        mVar.a((int) this.n, (int) this.o);
    }

    public void a(int i) {
        if (i == 0) {
            a(56.0d, 56.0d, 12.5d, 3.0d, 12.0f, 6.0f);
        } else {
            a(40.0d, 40.0d, 8.75d, 2.5d, 10.0f, 5.0f);
        }
    }

    public void a(boolean z) {
        this.g.a(z);
    }

    public void a(float f) {
        this.g.e(f);
    }

    public void a(float f, float f2) {
        this.g.b(f);
        this.g.c(f2);
    }

    public void b(float f) {
        this.g.d(f);
    }

    public void b(int i) {
        this.g.a(i);
    }

    public void a(int... iArr) {
        this.g.a(iArr);
        this.g.b(0);
    }

    public int getIntrinsicHeight() {
        return (int) this.o;
    }

    public int getIntrinsicWidth() {
        return (int) this.n;
    }

    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int save = canvas.save();
        canvas.rotate(this.i, bounds.exactCenterX(), bounds.exactCenterY());
        this.g.a(canvas, bounds);
        canvas.restoreToCount(save);
    }

    public void setAlpha(int i) {
        this.g.c(i);
    }

    public int getAlpha() {
        return this.g.b();
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.g.a(colorFilter);
    }

    void c(float f) {
        this.i = f;
        invalidateSelf();
    }

    public int getOpacity() {
        return -3;
    }

    public boolean isRunning() {
        List list = this.f;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Animation animation = (Animation) list.get(i);
            if (animation.hasStarted() && !animation.hasEnded()) {
                return true;
            }
        }
        return false;
    }

    public void start() {
        this.q = true;
        this.l.reset();
        this.g.j();
        if (this.g.g() != this.g.d()) {
            this.k.startAnimation(this.p);
            return;
        }
        this.g.b(0);
        this.g.k();
        this.k.startAnimation(this.l);
    }

    public void stop() {
        this.q = false;
        this.k.clearAnimation();
        c(0.0f);
        this.g.a(false);
        this.g.b(0);
        this.g.k();
    }

    private void c() {
        m mVar = this.g;
        Animation hVar = new h(this, mVar);
        hVar.setInterpolator(d);
        hVar.setDuration(666);
        hVar.setAnimationListener(new i(this, mVar));
        Animation jVar = new j(this, mVar);
        jVar.setRepeatCount(-1);
        jVar.setRepeatMode(1);
        jVar.setInterpolator(a);
        jVar.setDuration(1333);
        jVar.setAnimationListener(new k(this, mVar));
        this.p = hVar;
        this.l = jVar;
    }
}
