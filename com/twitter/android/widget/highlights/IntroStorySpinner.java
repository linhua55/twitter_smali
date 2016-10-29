package com.twitter.android.widget.highlights;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class IntroStorySpinner extends View implements AnimatorListener {
    private final Drawable[] a;
    private final Drawable b;
    private ValueAnimator c;
    private ObjectAnimator d;
    private ObjectAnimator e;
    private ObjectAnimator f;
    private int g;
    private int h;
    private int i;
    private int j;
    private float k;
    private float l;
    private float m;
    private boolean n;
    private boolean o;
    private boolean p;

    public IntroStorySpinner(Context context) {
        super(context);
        this.g = -1;
        this.h = 0;
        this.i = NalUnitUtil.EXTENDED_SAR;
        this.j = 0;
        this.k = 0.0f;
        this.n = false;
        this.o = false;
        this.p = false;
        Resources resources = context.getResources();
        this.a = a(resources);
        this.b = b(resources);
    }

    public IntroStorySpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public IntroStorySpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = -1;
        this.h = 0;
        this.i = NalUnitUtil.EXTENDED_SAR;
        this.j = 0;
        this.k = 0.0f;
        this.n = false;
        this.o = false;
        this.p = false;
        Resources resources = context.getResources();
        this.a = a(resources);
        this.b = b(resources);
    }

    private Drawable[] a(Resources resources) {
        return new Drawable[]{resources.getDrawable(2130838897), resources.getDrawable(2130838896), resources.getDrawable(2130838899), resources.getDrawable(2130838898)};
    }

    private Drawable b(Resources resources) {
        return resources.getDrawable(2130838894);
    }

    public void a() {
        if (this.g != 0) {
            e();
            this.g = 0;
            f();
            d();
        }
    }

    public void a(boolean z) {
        if (this.g != 3) {
            if (!z) {
                e();
                this.g = 3;
                f();
            } else if (this.g != 1 && this.g != 2) {
                this.g = 1;
                d();
            }
        }
    }

    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            b();
        } else {
            c();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.p = true;
        b();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.p = false;
        c();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.l = ((float) (i3 - i)) / 2.0f;
        this.m = ((float) (i4 - i2)) / 2.0f;
    }

    public void setSpinnerRotation(float f) {
        this.k = f;
        g();
    }

    public void setLoadingDrawableAlpha(int i) {
        this.i = i;
        g();
    }

    public void setCompleteDrawableAlpha(int i) {
        this.j = i;
        g();
    }

    protected void onDraw(Canvas canvas) {
        canvas.rotate(this.k, this.l, this.m);
        if (this.i > 0) {
            Drawable drawable = this.a[this.h];
            drawable.setAlpha(this.i);
            a(drawable, canvas);
        }
        if (this.j > 0) {
            this.b.setAlpha(this.j);
            a(this.b, canvas);
        }
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (this.o) {
            switch (this.g) {
                case Util.TYPE_DASH /*0*/:
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    if ((animator == this.d ? 1 : null) != null) {
                        this.h = (this.h + 1) % this.a.length;
                        this.c.start();
                        invalidate();
                    } else if (this.g == 0) {
                        this.d.start();
                    } else {
                        this.g = 2;
                        this.d.start();
                        this.e.start();
                        this.f.start();
                    }
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.g = 3;
                default:
            }
        }
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    private void b() {
        if (!this.n && this.p && getVisibility() == 0) {
            this.n = true;
            switch (this.g) {
                case TtmlStyle.UNSPECIFIED /*-1*/:
                case Util.TYPE_DASH /*0*/:
                    this.g = 0;
                    f();
                    d();
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.g = 3;
                    f();
                default:
                    f();
            }
        }
    }

    private void c() {
        if (this.n) {
            this.n = false;
            e();
        }
    }

    private void d() {
        if (!this.o && this.p && getVisibility() == 0) {
            Resources resources = getContext().getResources();
            if (this.c == null) {
                this.c = ObjectAnimator.ofFloat(new float[]{0.0f, 1.0f});
                this.c.setDuration((long) resources.getInteger(2131755050));
                this.c.addListener(this);
            }
            if (this.e == null) {
                this.e = ObjectAnimator.ofInt(this, "loadingDrawableAlpha", new int[]{NalUnitUtil.EXTENDED_SAR, 0});
                this.e.setDuration((long) resources.getInteger(2131755053));
                this.e.setInterpolator(new DecelerateInterpolator());
            }
            if (this.f == null) {
                this.f = ObjectAnimator.ofInt(this, "completeDrawableAlpha", new int[]{0, NalUnitUtil.EXTENDED_SAR});
                this.f.setDuration((long) resources.getInteger(2131755051));
                this.f.setStartDelay((long) resources.getInteger(2131755052));
                this.f.setInterpolator(new LinearInterpolator());
            }
            if (this.d == null) {
                this.d = ObjectAnimator.ofFloat(this, "spinnerRotation", new float[]{0.0f, -360.0f});
                this.d.setDuration((long) resources.getInteger(2131755049));
                this.d.setInterpolator(new AccelerateDecelerateInterpolator());
                this.d.addListener(this);
            }
            switch (this.g) {
                case TtmlStyle.UNSPECIFIED /*-1*/:
                case Util.TYPE_DASH /*0*/:
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    this.c.start();
                    this.o = true;
                default:
            }
        }
    }

    private void e() {
        if (this.c != null) {
            this.c.cancel();
        }
        if (this.d != null) {
            this.d.cancel();
        }
        if (this.e != null) {
            this.e.cancel();
        }
        if (this.f != null) {
            this.f.cancel();
        }
        this.o = false;
    }

    private void f() {
        switch (this.g) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.i = NalUnitUtil.EXTENDED_SAR;
                this.j = 0;
                break;
            case Util.TYPE_OTHER /*3*/:
                this.k = 0.0f;
                this.i = 0;
                this.j = NalUnitUtil.EXTENDED_SAR;
                break;
            default:
                this.k = 0.0f;
                this.i = NalUnitUtil.EXTENDED_SAR;
                this.j = 0;
                this.h = 0;
                break;
        }
        invalidate();
    }

    private void a(Drawable drawable, Canvas canvas) {
        float intrinsicWidth = (float) drawable.getIntrinsicWidth();
        float intrinsicHeight = (float) drawable.getIntrinsicHeight();
        int i = (int) (this.l - (intrinsicWidth / 2.0f));
        int i2 = (int) (this.m - intrinsicHeight);
        drawable.setBounds(i, i2, (int) (intrinsicWidth + ((float) i)), (int) (intrinsicHeight + ((float) i2)));
        drawable.draw(canvas);
    }

    private void g() {
        postInvalidateOnAnimation();
    }
}
