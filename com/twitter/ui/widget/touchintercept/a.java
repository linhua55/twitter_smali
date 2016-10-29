package com.twitter.ui.widget.touchintercept;

import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.res.Resources;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.twitter.util.math.b;
import defpackage.crd;
import defpackage.crz;
import defpackage.csb;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class a implements h {
    private final Activity a;
    private final View b;
    private final View c;
    private final ObjectAnimator d;
    private final Interpolator e;
    private final Interpolator f;
    private final Interpolator g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final float l;
    private int m;
    private int n;
    private float o;

    public a(Activity activity, View view, View view2, d dVar) {
        this.m = 0;
        this.n = 0;
        this.a = activity;
        this.b = view;
        this.c = view2;
        this.e = crd.b();
        this.f = new AccelerateInterpolator();
        this.g = new LinearInterpolator();
        AnimatorListener bVar = new b(this, dVar);
        AnimatorUpdateListener cVar = new c(this);
        this.d = ObjectAnimator.ofFloat(this.b, "translationY", new float[]{0.0f, 0.0f});
        this.d.addListener(bVar);
        this.d.addUpdateListener(cVar);
        Resources resources = activity.getResources();
        this.h = resources.getInteger(csb.fullscreen_vertical_drag_retract_duration_millis_min);
        this.i = resources.getInteger(csb.fullscreen_vertical_drag_retract_duration_millis_max);
        this.j = resources.getInteger(csb.fullscreen_vertical_drag_dismiss_duration_millis_min);
        this.k = resources.getInteger(csb.fullscreen_vertical_drag_dismiss_duration_millis_max);
        this.l = resources.getFraction(crz.vertical_drag_dismiss_min_translation_percentage, 1, 1);
        a();
    }

    public void a(float f) {
        int i = 1;
        if (this.m != 3) {
            if (this.m == 0) {
                this.o = 0.0f;
            } else if (this.m == 2) {
                this.d.cancel();
                this.o = this.b.getTranslationY();
            }
            this.m = 1;
            if (this.n == 0) {
                if (f >= 0.0f) {
                    i = 2;
                }
                this.n = i;
            }
            a();
            this.b.setTranslationY(this.o + f);
            b();
        }
    }

    public void b(float f) {
        if (this.m != 3) {
            int i;
            int height = this.b.getHeight();
            float translationY = this.b.getTranslationY();
            float f2 = ((float) height) * this.l;
            switch (this.n) {
                case p.View_android_focusable /*1*/:
                    if (f <= 0.0f && translationY <= 0.0f) {
                        if (f >= 0.0f && translationY >= (-f2)) {
                            i = 0;
                            break;
                        } else {
                            i = 1;
                            break;
                        }
                    }
                    i = 0;
                    break;
                    break;
                case p.View_paddingStart /*2*/:
                    if (f >= 0.0f && translationY >= 0.0f) {
                        if (f <= 0.0f && translationY <= f2) {
                            i = 0;
                            break;
                        } else {
                            i = 1;
                            break;
                        }
                    }
                    i = 0;
                    break;
                    break;
                default:
                    i = 0;
                    break;
            }
            if (i != 0) {
                this.m = 3;
                long a = a(f, (int) Math.abs(((float) ((this.n == 2 ? 1 : 0) != 0 ? height : -height)) - translationY), (long) this.j, (long) this.k);
                if (Math.abs(f) > 0.0f) {
                    i = 1;
                } else {
                    i = 0;
                }
                TimeInterpolator timeInterpolator = i != 0 ? this.g : this.f;
                this.d.setFloatValues(new float[]{translationY, (float) r8});
                this.d.setInterpolator(timeInterpolator);
                this.d.setDuration(a).start();
            } else {
                this.m = 2;
                long a2 = a(f, (int) Math.abs(translationY), (long) this.h, (long) this.i);
                this.d.setFloatValues(new float[]{translationY, 0.0f});
                this.d.setInterpolator(this.e);
                this.d.setDuration(a2).start();
            }
            this.n = 0;
        }
    }

    @VisibleForTesting
    static long a(float f, int i, long j, long j2) {
        float abs = Math.abs(f);
        if (abs < 1.0f) {
            return j2;
        }
        return b.a((long) (((float) (((long) i) * 1000)) / abs), j, j2);
    }

    @VisibleForTesting
    void a() {
        int i;
        int i2 = 0;
        switch (this.m) {
            case p.View_android_theme /*0*/:
                i = 8;
                break;
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
                i2 = 2;
                i = 0;
                break;
            default:
                throw new IllegalStateException("Unsupported state: " + this.m);
        }
        a(i2, i);
    }

    @VisibleForTesting
    void a(int i, int i2) {
        if (this.b.getLayerType() != i) {
            this.b.setLayerType(i, null);
        }
        if (this.c.getLayerType() != i) {
            this.c.setLayerType(i, null);
        }
        if (this.c.getVisibility() != i2) {
            this.c.setVisibility(i2);
        }
    }

    @VisibleForTesting
    void b() {
        this.c.setAlpha(1.0f - Math.abs(this.b.getTranslationY() / ((float) this.b.getHeight())));
    }
}
