package com.twitter.internal.android.widget;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import bus;
import com.twitter.util.ui.r;
import defpackage.bcv;
import defpackage.bdd;
import defpackage.bde;

/* compiled from: Twttr */
class a implements e {
    private final View a;
    private final Drawable b;
    private final Drawable c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final float k;
    private Animator l;
    private ah m;
    private int n;
    private int o;
    private float p;
    private final String q;
    private final int r;
    private final int s;

    a(View view, Context context, int i) {
        this.p = 1.0f;
        this.a = view;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, bdd.BadgeIndicator);
        this.d = obtainStyledAttributes.getResourceId(bdd.BadgeIndicator_numberBackground, 0);
        this.e = obtainStyledAttributes.getColor(bdd.BadgeIndicator_numberColor, -1);
        this.k = obtainStyledAttributes.getDimension(bdd.BadgeIndicator_numberTextSize, 0.0f);
        this.g = obtainStyledAttributes.getDimensionPixelSize(bdd.BadgeIndicator_numberMinHeight, 0);
        this.f = obtainStyledAttributes.getDimensionPixelSize(bdd.BadgeIndicator_numberMinWidth, 0);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(bdd.BadgeIndicator_indicatorMarginBottom, -1);
        this.b = obtainStyledAttributes.getDrawable(bdd.BadgeIndicator_indicatorDrawable);
        this.c = obtainStyledAttributes.getDrawable(bdd.BadgeIndicator_circleDrawable);
        int a = bde.a(context);
        bde.a(this.c, a);
        bde.a(this.b, a);
        this.i = obtainStyledAttributes.getDimensionPixelSize(bdd.BadgeIndicator_circleMarginTop, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(bdd.BadgeIndicator_circleMarginRight, 0);
        this.n = obtainStyledAttributes.getInt(bdd.BadgeIndicator_badgeMode, 0);
        obtainStyledAttributes.recycle();
        if (bus.a().c()) {
            this.q = "99+";
            this.r = 99;
            this.s = context.getResources().getDimensionPixelSize(bcv.modern_badge_indicator_offset);
            return;
        }
        this.q = "20+";
        this.r = 20;
        this.s = 0;
    }

    public void setBadgeMode(int i) {
        this.n = i;
    }

    boolean a() {
        return this.o > 0 || this.n == 3;
    }

    protected boolean a(Drawable drawable) {
        return drawable == this.m || drawable == this.b || drawable == this.c;
    }

    protected void b() {
        if (this.b != null && this.b.isStateful()) {
            this.b.setState(this.a.getDrawableState());
        }
    }

    void a(float f) {
        this.p = f;
        this.a.invalidate();
    }

    void c() {
        this.l = null;
    }

    public void a(boolean z, int i, int i2, int i3, int i4, Rect rect, int i5) {
        int max;
        int max2;
        int i6;
        int i7;
        if (this.n == 2 || this.n == 3) {
            ah ahVar = this.m;
            if (ahVar != null) {
                max = Math.max(ahVar.getIntrinsicWidth(), this.f);
                max2 = Math.max(ahVar.getIntrinsicHeight(), this.g);
                i6 = ((i3 - i) - max) - (this.f / 4);
                if (rect != null) {
                    i7 = rect.top - this.s;
                    i6 = Math.min(rect.right - (max / 2), i6);
                } else {
                    i7 = 0;
                }
                ahVar.setBounds(i6, i7, max + i6, max2 + i7);
            }
        } else if (this.n == 1) {
            Drawable drawable = this.b;
            if (drawable != null) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                max = drawable.getIntrinsicHeight();
                max2 = r.a(i3 - i, intrinsicWidth);
                if (this.h != -1) {
                    i6 = (((i4 - i2) - this.a.getPaddingBottom()) - this.h) - max;
                } else {
                    i6 = r.a((i4 - i5) - this.a.getPaddingBottom(), max) + i5;
                }
                drawable.setBounds(max2, i6, intrinsicWidth + max2, max + i6);
            }
        } else if (this.n == 4) {
            Drawable drawable2 = this.c;
            if (drawable2 != null) {
                max = drawable2.getIntrinsicWidth();
                max2 = drawable2.getIntrinsicHeight();
                i6 = (i3 - i) - max;
                if (rect != null) {
                    i7 = rect.top + this.i;
                    i6 = Math.min(rect.right - max, i6) - this.j;
                } else {
                    i7 = this.i;
                    i6 -= this.j;
                }
                drawable2.setBounds(i6, i7, max + i6, max2 + i7);
            }
        }
    }

    public void a(Canvas canvas) {
        Rect bounds;
        float f;
        int save;
        if (this.n == 2 || this.n == 3) {
            if (this.m != null) {
                if (!(this.l == null || this.l.isRunning())) {
                    this.l.start();
                }
                bounds = this.m.getBounds();
                f = this.p;
                save = canvas.save(1);
                canvas.scale(f, f, bounds.exactCenterX(), bounds.exactCenterY());
                this.m.draw(canvas);
                canvas.restoreToCount(save);
            }
        } else if (this.n == 1) {
            if (this.b != null && this.o > 0) {
                this.b.draw(canvas);
            }
        } else if (this.n == 4 && this.c != null && this.o != 0) {
            if (!(this.l == null || this.l.isRunning())) {
                this.l.start();
            }
            bounds = this.c.getBounds();
            f = this.p;
            save = canvas.save(1);
            canvas.scale(f, f, bounds.exactCenterX(), bounds.exactCenterY());
            this.c.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    public void setBadgeNumber(int i) {
        if (this.o == i) {
            return;
        }
        if (this.n == 2 || this.n == 3) {
            int i2 = this.o;
            this.o = i;
            if (a()) {
                Context context = this.a.getContext();
                if (this.m == null) {
                    this.m = new ah(context);
                    this.m.a(this.e);
                    this.m.a(this.k);
                    if (this.d != 0) {
                        this.m.a(context.getResources().getDrawable(this.d));
                    }
                }
                if (this.n == 3) {
                    this.m.a(context, "\u2605");
                } else if (i <= this.r) {
                    this.m.a(context, String.valueOf(i));
                } else {
                    this.m.a(context, this.q);
                }
                if (i2 == 0) {
                    d();
                    this.l = a(0.0f, 1.0f, 250, new OvershootInterpolator(), new d(this));
                }
            } else {
                d();
                this.l = a(1.0f, 0.0f, 200, new AnticipateInterpolator(), new c(this));
            }
            this.a.requestLayout();
            this.a.refreshDrawableState();
            this.a.invalidate();
        } else if (this.n == 1) {
            this.o = i;
            if (this.b != null) {
                this.a.invalidateDrawable(this.b);
            } else {
                this.a.invalidate();
            }
        } else if (this.n == 4) {
            this.o = i;
            if (this.c != null) {
                this.a.invalidateDrawable(this.c);
            } else {
                this.a.invalidate();
            }
        }
    }

    private void d() {
        if (this.l != null && this.l.isRunning()) {
            this.l.cancel();
        }
    }

    private Animator a(float f, float f2, long j, Interpolator interpolator, AnimatorListener animatorListener) {
        Animator ofFloat = ValueAnimator.ofFloat(new float[]{f, f2});
        ofFloat.setInterpolator(interpolator);
        ofFloat.setDuration(j);
        ofFloat.addUpdateListener(new b(this));
        ofFloat.addListener(animatorListener);
        return ofFloat;
    }
}
