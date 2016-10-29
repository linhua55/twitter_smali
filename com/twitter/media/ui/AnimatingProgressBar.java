package com.twitter.media.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ProgressBar;
import com.twitter.util.math.a;

/* compiled from: Twttr */
public class AnimatingProgressBar extends ProgressBar {
    private static final Interpolator a;
    private ValueAnimator b;
    private ValueAnimator c;
    private boolean d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private boolean j;

    static {
        a = new AccelerateDecelerateInterpolator();
    }

    public AnimatingProgressBar(Context context) {
        super(context);
        this.e = false;
        this.f = false;
        this.g = 0;
        this.h = 0;
        this.i = 250;
        this.j = true;
    }

    public AnimatingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = false;
        this.f = false;
        this.g = 0;
        this.h = 0;
        this.i = 250;
        this.j = true;
    }

    public AnimatingProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = false;
        this.f = false;
        this.g = 0;
        this.h = 0;
        this.i = 250;
        this.j = true;
    }

    private boolean a() {
        if (!this.d) {
            return false;
        }
        if (this.g > 0 && this.g < getMax()) {
            return false;
        }
        if (this.h <= 0 || this.h >= getMax()) {
            return true;
        }
        return false;
    }

    public void setAllowsProgressDrops(boolean z) {
        this.j = z;
    }

    public void setAnimationMSTime(int i) {
        this.i = i;
    }

    public void setHideOnComplete(boolean z) {
        this.d = z;
    }

    public void setIndeterminate(boolean z) {
        if (z) {
            if (this.b != null) {
                this.b.cancel();
            }
            if (this.c != null) {
                this.c.cancel();
            }
        }
    }

    public void setResetPrimaryOnComplete(boolean z) {
        this.e = z;
    }

    public void setResetSecondaryOnComplete(boolean z) {
        this.f = z;
    }

    public void a(int i) {
        post(new a(this, i));
    }

    public void b(int i) {
        post(new b(this, i));
    }

    private int a(int i, boolean z) {
        int a = a.a(i, 0, getMax());
        if (a == 0) {
            if (a()) {
                setVisibility(8);
            }
            return a;
        }
        setVisibility(0);
        setAlpha(1.0f);
        ValueAnimator valueAnimator = z ? this.b : this.c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (valueAnimator == null) {
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{getProgress(), a});
            ofInt.setInterpolator(a);
            ofInt.setDuration((long) this.i);
            ofInt.addUpdateListener(z ? new c(this) : new g(this));
            if (z) {
                this.b = ofInt;
            } else {
                this.c = ofInt;
            }
            valueAnimator = ofInt;
        } else {
            valueAnimator.setIntValues(new int[]{getProgress(), a});
        }
        valueAnimator.start();
        return a;
    }
}
