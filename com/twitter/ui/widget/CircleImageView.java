package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.support.annotation.ColorRes;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

/* compiled from: Twttr */
public class CircleImageView extends ImageView implements z {
    private final AccelerateInterpolator a;
    private final DecelerateInterpolator b;
    private final d c;
    private final b d;
    private int e;
    private int f;
    private float g;
    private boolean h;
    private int i;
    private boolean j;
    private int k;
    private int l;
    private f m;

    public CircleImageView(Context context) {
        super(context);
        this.a = new AccelerateInterpolator(2.0f);
        this.b = new DecelerateInterpolator(2.0f);
        this.c = new d();
        this.d = new b();
        this.f = 0;
        this.h = false;
        this.j = false;
        a();
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new AccelerateInterpolator(2.0f);
        this.b = new DecelerateInterpolator(2.0f);
        this.c = new d();
        this.d = new b();
        this.f = 0;
        this.h = false;
        this.j = false;
        a();
    }

    private void a() {
        Drawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = (int) ((20.0f * f) * 2.0f);
        int i2 = (int) (1.75f * f);
        int i3 = (int) (0.0f * f);
        this.i = (int) (3.5f * f);
        if (b()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new c(this, this.i, i));
            ViewCompat.setLayerType(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer((float) this.i, (float) i3, (float) i2, 503316480);
            int i4 = this.i;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(-328966);
        setBackgroundDrawable(shapeDrawable);
        this.m = new f(getContext(), this);
        this.m.b(-328966);
        setImageDrawable(this.m);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.k = (int) (displayMetrics.density * 40.0f);
        this.l = (int) (displayMetrics.density * 40.0f);
        this.g = displayMetrics.density * 64.0f;
        this.e = getTop();
    }

    public void setSpinnerFinalOffset(int i) {
        this.g = (float) i;
    }

    private boolean b() {
        return VERSION.SDK_INT >= 21;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(MeasureSpec.makeMeasureSpec(this.k, 1073741824), MeasureSpec.makeMeasureSpec(this.l, 1073741824));
        if (!b()) {
            setMeasuredDimension(getMeasuredWidth() + (this.i * 2), getMeasuredHeight() + (this.i * 2));
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.j) {
            offsetTopAndBottom(this.e - i2);
            return;
        }
        this.j = true;
        this.f = i2;
        this.e = i2;
    }

    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.h) {
            this.m.setAlpha(255);
            this.m.start();
        } else {
            this.m.stop();
            setVisibility(8);
            setAnimationProgress(0.0f);
        }
        this.e = getTop();
    }

    public void setProgressBackgroundColor(@ColorRes int i) {
        setBackgroundColor(i);
        this.m.b(getResources().getColor(i));
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = resources.getColor(iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setColorSchemeColors(int... iArr) {
        this.m.a(iArr);
    }

    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(getResources().getColor(i));
        }
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            int i2;
            if (i == 0) {
                i2 = (int) (displayMetrics.density * 56.0f);
                this.k = i2;
                this.l = i2;
            } else {
                i2 = (int) (displayMetrics.density * 40.0f);
                this.k = i2;
                this.l = i2;
            }
            setImageDrawable(null);
            this.m.a(i);
            setImageDrawable(this.m);
        }
    }

    public void setRefreshing(boolean z) {
        if (!z || this.h) {
            d();
        } else {
            c();
        }
        this.h = z;
    }

    private void setAnimationProgress(float f) {
        ViewCompat.setScaleX(this, f);
        ViewCompat.setScaleY(this, f);
    }

    private void a(int i, int i2, float f) {
        a((((int) (((float) (i2 - i)) * f)) + i) - getTop(), false);
    }

    private void c() {
        setAnimationProgress(1.0f);
        this.c.a = this.e;
        this.c.b = (int) this.g;
        this.c.reset();
        this.c.setDuration(200);
        this.c.setInterpolator(this.b);
        clearAnimation();
        startAnimation(this.c);
    }

    private void d() {
        this.m.a(false);
        this.m.a(0.0f, 0.0f);
        this.d.a = this.e;
        this.d.b = this.f;
        this.d.c = ViewCompat.getScaleX(this);
        this.d.reset();
        this.d.setDuration(150);
        this.m.stop();
        clearAnimation();
        startAnimation(this.d);
    }

    private void a(int i, boolean z) {
        offsetTopAndBottom(i);
        this.e = getTop();
        if (z && VERSION.SDK_INT < 11) {
            invalidate();
        }
    }

    public void setProgress(float f) {
        float min = Math.min(1.0f, Math.abs(f));
        this.m.a(true);
        float max = (((float) Math.max(((double) min) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float f2 = this.g - ((float) this.f);
        float max2 = Math.max(0.0f, Math.min(f - 1.0f, 2.0f));
        max2 = ((float) (((double) (max2 / 4.0f)) - Math.pow((double) (max2 / 4.0f), 2.0d))) * 2.0f;
        int i = ((int) ((min * f2) + ((f2 * max2) * 2.0f))) + this.f;
        if (getVisibility() != 0) {
            setVisibility(0);
        }
        setAnimationProgress(1.0f);
        this.m.setAlpha(((int) (179.0f * this.a.getInterpolation(max))) + 76);
        this.m.a(0.0f, Math.min(0.8f, max * 0.8f));
        this.m.a(Math.min(1.0f, max));
        this.m.b((((max * 0.4f) - 16.0f) + (max2 * 2.0f)) * 0.5f);
        a(i - this.e, true);
    }
}
