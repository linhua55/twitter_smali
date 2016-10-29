package com.twitter.ui.widget;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.twitter.util.ui.r;
import defpackage.cru;
import defpackage.crv;
import defpackage.csb;
import defpackage.cse;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
final class ag extends FrameLayout implements OnPreDrawListener, AnimationListener {
    private static final boolean a;
    private Animator A;
    private boolean B;
    private final Activity C;
    private Runnable D;
    private final TextView b;
    private final int c;
    private final int d;
    private final int e;
    private int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final long k;
    private boolean l;
    private boolean m;
    private final View n;
    private final ViewGroup o;
    private final int[] p;
    private final int[] q;
    private final int[] r;
    private final Path s;
    private final Paint t;
    private RectF u;
    private final int v;
    private final WindowManager w;
    private Animation x;
    private Animation y;
    private Animator z;

    static {
        a = VERSION.SDK_INT >= 18;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.l || z) {
            b();
        }
    }

    private void a(boolean z, Runnable runnable) {
        if (!this.m) {
            this.n.getViewTreeObserver().removeOnPreDrawListener(this);
            this.D = runnable;
            if (!z) {
                runnable.run();
            } else if (a) {
                this.A.start();
            } else {
                Animation b = b(false);
                this.y = b;
                startAnimation(b);
            }
            this.m = true;
        }
    }

    private static Context a(Context context, int i) {
        if (i != 0) {
            return new ContextThemeWrapper(context, i);
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(crv.tooltipStyle, typedValue, true);
        return new ContextThemeWrapper(context, typedValue.resourceId);
    }

    private ag(Activity activity, View view, ViewGroup viewGroup, CharSequence charSequence, int i, int i2) {
        super(a((Context) activity, i2), null);
        this.p = new int[2];
        this.q = new int[2];
        this.r = new int[2];
        this.s = new Path();
        this.t = new Paint();
        this.C = activity;
        this.n = view;
        this.o = viewGroup;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i2, cse.TooltipView);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(cse.TooltipView_arrowWidth, 0);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(cse.TooltipView_arrowHeight, 0);
        this.c = obtainStyledAttributes.getDimensionPixelOffset(cse.TooltipView_xOffset, 0);
        this.d = obtainStyledAttributes.getDimensionPixelOffset(cse.TooltipView_yOffset, 0);
        this.e = obtainStyledAttributes.getDimensionPixelOffset(cse.TooltipView_screenEdgePadding, 0);
        this.i = obtainStyledAttributes.getDimensionPixelOffset(cse.TooltipView_cornerRadius, 0);
        this.k = (long) obtainStyledAttributes.getInteger(cse.TooltipView_transitionAnimationDelayMs, 0);
        this.t.setColor(obtainStyledAttributes.getColor(cse.TooltipView_tooltipColor, 0));
        this.b = new TextView(activity);
        this.b.setTextAppearance(activity, obtainStyledAttributes.getResourceId(cse.TooltipView_textAppearance, 0));
        addView(this.b, new LayoutParams(-2, -2));
        this.b.setText(charSequence);
        obtainStyledAttributes.recycle();
        this.j = i;
        this.t.setAntiAlias(true);
        if (c()) {
            setPadding(getPaddingLeft(), getPaddingTop() + this.g, getPaddingRight(), getPaddingBottom() + this.g);
        } else {
            setPadding(getPaddingLeft() + this.g, getPaddingTop(), getPaddingRight() + this.g, getPaddingBottom());
        }
        setWillNotDraw(false);
        this.w = this.C.getWindowManager();
        this.v = this.C.getResources().getConfiguration().orientation;
        if (a) {
            Animator loadAnimator = AnimatorInflater.loadAnimator(activity, cru.tooltip_transition_in);
            loadAnimator.setTarget(this);
            loadAnimator.addListener(new ah());
            this.z = loadAnimator;
            loadAnimator = AnimatorInflater.loadAnimator(activity, cru.tooltip_transition_out);
            loadAnimator.setTarget(this);
            loadAnimator.addListener(new ah());
            this.A = loadAnimator;
        }
    }

    private void a(boolean z) {
        this.n.getViewTreeObserver().addOnPreDrawListener(this);
        measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        b();
        if (z) {
            setVisibility(4);
            postDelayed(new ai(), this.k);
        }
    }

    private void b() {
        if (!this.B) {
            if (!this.l && this.n.getLeft() == 0 && this.n.getRight() == 0 && this.n.getTop() == 0 && this.n.getBottom() == 0) {
                requestLayout();
                return;
            }
            int i;
            int max;
            this.l = true;
            ViewGroup viewGroup = this.o;
            a(this.q);
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = getMeasuredWidth();
            int width = this.q[0] + (this.n.getWidth() / 2);
            if (c()) {
                i = width - (measuredWidth / 2);
                measuredWidth = width + (measuredWidth / 2);
                max = Math.max(viewGroup.getPaddingLeft(), this.e);
                int width2 = viewGroup.getWidth() - Math.max(viewGroup.getPaddingRight(), this.e);
                if (i >= max) {
                    if (measuredWidth > width2) {
                        max = i - (measuredWidth - width2);
                    } else {
                        max = i;
                    }
                }
                i = this.c + max;
                max = this.j == 1 ? (this.q[1] + this.n.getHeight()) - this.d : (this.q[1] + this.d) - measuredHeight;
            } else {
                max = ((this.q[1] + (this.n.getHeight() / 2)) - (measuredHeight / 2)) + this.d;
                i = this.j == 2 ? (this.q[0] + this.n.getWidth()) - this.c : (this.q[0] + this.c) - measuredWidth;
            }
            getLocationInWindow(this.p);
            i -= this.p[0];
            max -= this.p[1];
            if (a) {
                setX(((float) i) + getX());
                setY(((float) max) + getY());
            } else {
                offsetLeftAndRight(i);
                offsetTopAndBottom(max);
            }
            getLocationInWindow(this.p);
            max = width - this.p[0];
            if (((float) Math.abs(max - this.f)) > 0.5f) {
                this.f = max;
                invalidate();
            }
            if (a) {
                switch (this.j) {
                    case p.View_android_theme /*0*/:
                        setPivotX((float) this.f);
                        setPivotY((float) getMeasuredHeight());
                        break;
                    case p.View_android_focusable /*1*/:
                        setPivotX((float) this.f);
                        setPivotY(0.0f);
                        break;
                    case p.View_paddingStart /*2*/:
                        setPivotX(0.0f);
                        setPivotY((float) (getMeasuredHeight() / 2));
                        break;
                    case p.View_paddingEnd /*3*/:
                        setPivotX((float) getMeasuredWidth());
                        setPivotY((float) (getMeasuredHeight() / 2));
                        break;
                }
            }
            this.r[0] = this.q[0];
            this.r[1] = this.q[1];
        }
    }

    private ScaleAnimation b(boolean z) {
        int height;
        int i;
        ScaleAnimation scaleAnimation;
        a(this.q);
        getLocationInWindow(this.p);
        switch (this.j) {
            case p.View_android_theme /*0*/:
                int i2 = this.f;
                height = getHeight();
                i = i2;
                break;
            case p.View_android_focusable /*1*/:
                height = 0;
                i = this.f;
                break;
            case p.View_paddingStart /*2*/:
                height = getHeight() / 2;
                i = 0;
                break;
            case p.View_paddingEnd /*3*/:
                height = getHeight() / 2;
                i = getWidth();
                break;
            default:
                height = 0;
                i = 0;
                break;
        }
        if (z) {
            scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 0, (float) i, 0, (float) height);
            scaleAnimation.setInterpolator(new DecelerateInterpolator(3.0f));
        } else {
            scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 0, (float) i, 0, (float) height);
            scaleAnimation.setInterpolator(new AccelerateInterpolator(3.0f));
        }
        scaleAnimation.setDuration((long) getResources().getInteger(csb.tooltip_transition_duration_ms));
        scaleAnimation.setAnimationListener(this);
        return scaleAnimation;
    }

    private void a(int[] iArr) {
        this.n.getLocationInWindow(iArr);
    }

    private static void f(ag agVar) {
        if (agVar.D != null) {
            agVar.D.run();
        }
    }

    private boolean c() {
        return this.j == 1 || this.j == 0;
    }

    protected void onMeasure(int i, int i2) {
        int max;
        Point a = r.a(this.w);
        switch (this.v) {
            case p.View_paddingStart /*2*/:
                max = (int) (((float) Math.max(a.x, a.y)) * 0.9f);
                break;
            default:
                max = (int) (((float) Math.min(a.x, a.y)) * 0.9f);
                break;
        }
        int mode = MeasureSpec.getMode(i);
        if (mode == 0) {
            mode = max;
            max = Integer.MIN_VALUE;
        } else {
            int i3 = mode;
            mode = Math.min(MeasureSpec.getSize(i), max);
            max = i3;
        }
        super.onMeasure(MeasureSpec.makeMeasureSpec(mode, max), i2);
    }

    protected void onDraw(Canvas canvas) {
        if (this.l) {
            RectF rectF;
            int i = this.h;
            int i2 = this.g;
            int width = getWidth();
            int height = getHeight();
            Paint paint = this.t;
            if (this.u == null) {
                rectF = new RectF();
                if (c()) {
                    rectF.set(0.0f, (float) i2, (float) width, (float) (height - i2));
                } else {
                    rectF.set((float) i2, 0.0f, (float) (width - i2), (float) height);
                }
                this.u = rectF;
            } else {
                rectF = this.u;
            }
            int i3 = this.i;
            canvas.drawRoundRect(rectF, (float) i3, (float) i3, paint);
            Path path = this.s;
            path.rewind();
            int i4;
            int i5;
            if (c()) {
                width = this.f;
                i4 = width - (i / 2);
                i = (i / 2) + width;
                if (this.j == 1) {
                    path.moveTo((float) i4, (float) i2);
                    path.lineTo((float) width, 0.0f);
                    path.lineTo((float) i, (float) i2);
                } else {
                    i5 = (int) rectF.bottom;
                    path.moveTo((float) i4, (float) i5);
                    path.lineTo((float) width, (float) height);
                    path.lineTo((float) i, (float) i5);
                }
            } else {
                height = (height - i) / 2;
                i4 = height + i;
                i = (i / 2) + height;
                if (this.j == 2) {
                    path.moveTo((float) i2, (float) height);
                    path.lineTo((float) i2, (float) i4);
                    path.lineTo(0.0f, (float) i);
                } else {
                    i5 = (int) rectF.right;
                    path.moveTo((float) i5, (float) height);
                    path.lineTo((float) width, (float) i);
                    path.lineTo((float) i5, (float) i4);
                }
            }
            path.close();
            canvas.drawPath(this.s, paint);
        }
    }

    public void a(CharSequence charSequence) {
        this.b.setText(charSequence);
        this.u = null;
        b();
    }

    public void onAnimationStart(Animation animation) {
        setVisibility(0);
    }

    public void onAnimationEnd(Animation animation) {
        if (animation == this.y) {
            f(this);
        } else if (animation == this.x) {
            b();
        }
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public boolean onPreDraw() {
        a(this.q);
        if (!(this.q[0] == this.r[0] && this.q[1] == this.r[1])) {
            b();
        }
        return true;
    }
}
