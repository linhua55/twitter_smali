package com.twitter.android.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.Scroller;
import com.twitter.android.mx;
import com.twitter.util.ak;
import com.twitter.util.math.a;
import com.twitter.util.ui.r;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class DraggableDrawerLayout extends ViewGroup {
    private ImageView A;
    private float B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private Scroller I;
    private boolean J;
    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private final boolean e;
    private final float f;
    private final float g;
    private final float h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private final int m;
    @SuppressLint({"Recycle"})
    private final VelocityTracker n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private ak v;
    private View w;
    private View x;
    private View y;
    private View z;

    public DraggableDrawerLayout(Context context) {
        this(context, null);
    }

    public DraggableDrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DraggableDrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.n = VelocityTracker.obtain();
        this.s = true;
        this.C = RtlSpacingHelper.UNDEFINED;
        this.D = 1;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.a = viewConfiguration.getScaledTouchSlop();
        this.b = viewConfiguration.getScaledMinimumFlingVelocity();
        this.c = viewConfiguration.getScaledMaximumFlingVelocity();
        Resources resources = getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        this.d = displayMetrics.heightPixels - resources.getDimensionPixelSize(2131690566);
        this.e = displayMetrics.widthPixels > displayMetrics.heightPixels;
        this.f = 1.0f * displayMetrics.density;
        this.g = 0.01f * displayMetrics.density;
        this.h = 0.005f * displayMetrics.density;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.DraggableDrawerLayout);
        this.i = obtainStyledAttributes.getResourceId(1, 0);
        this.j = obtainStyledAttributes.getResourceId(2, 0);
        this.k = obtainStyledAttributes.getResourceId(3, 0);
        this.l = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.m = resources.getDimensionPixelSize(2131689921);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.y = findViewById(this.i);
        if (this.y != null) {
            this.y.setVisibility(4);
            this.y.bringToFront();
        }
        this.z = findViewById(this.j);
        this.w = findViewById(2131952240);
        this.x = this.w.findViewWithTag("drawer_header");
        this.A = (ImageView) findViewById(this.k);
    }

    public int getDrawerState() {
        return this.D;
    }

    public boolean a() {
        return this.p || this.o;
    }

    public boolean b() {
        return this.p;
    }

    public boolean c() {
        return this.o;
    }

    public boolean d() {
        return this.e;
    }

    public void setDrawerDraggable(boolean z) {
        this.r = z;
    }

    public void setDraggableBelowUpPosition(boolean z) {
        this.s = z;
    }

    public void setLocked(boolean z) {
        this.q = z;
    }

    public void setDispatchDragToChildren(boolean z) {
        this.t = z;
    }

    public void setFullScreenHeaderView(View view) {
        if (this.y != view) {
            View view2 = this.y;
            this.y = view;
            if (view2 != null) {
                r.c(view2);
            }
            this.E = 0;
            if (view != null) {
                view.setVisibility(4);
                view.setClickable(true);
                addView(view);
                if (getMeasuredWidth() != 0) {
                    a(view, getMeasuredWidth(), getMeasuredHeight());
                    this.E = view.getMeasuredHeight();
                }
            }
        }
    }

    public void setDrawerLayoutListener(ak akVar) {
        this.v = akVar;
    }

    public void setExtendDrawerInUpState(boolean z) {
        this.u = z;
    }

    public void a(boolean z, boolean z2) {
        int i = (this.e || z2) ? 2 : 1;
        if (this.D != i && !a()) {
            this.D = i;
            if (z) {
                b(z2);
            } else {
                f();
            }
        }
    }

    public void a(boolean z) {
        if (this.D != 0 && !a()) {
            this.D = 0;
            setLocked(false);
            if (z) {
                i();
            } else {
                f();
            }
        }
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        int a;
        boolean z = false;
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.E = this.y != null ? a(this.y, measuredWidth, measuredHeight) : 0;
        if (this.x != null) {
            a = a(this.x, measuredWidth, measuredHeight);
        } else {
            a = 0;
        }
        this.F = a;
        if (measuredHeight < this.d) {
            z = true;
        }
        this.J = z;
        a = r.a(getContext()).b();
        if (this.J) {
            this.G = measuredHeight - this.F;
            if (this.D == 1 && this.u) {
                this.G = Math.min(this.m, this.G / 2);
            }
        } else if (this.G == 0) {
            this.G = a / 2;
        }
        if (this.J && this.D == 1 && this.u) {
            this.H = this.G;
        } else if ((this.J && this.D != 2) || this.D == 0) {
            this.H = measuredHeight - this.F;
        } else if (this.D == 1) {
            this.H = this.G;
        } else {
            this.H = this.E;
        }
        a = (this.D == 2 || this.q) ? measuredHeight : a + this.H;
        a(this.z, measuredWidth, (this.D == 2 ? this.G : this.H) - this.l);
        a(this.w, measuredWidth, a - this.H);
    }

    private int a(View view, int i, int i2) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        int i3 = marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
        view.measure(a(marginLayoutParams.width, i - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin)), a(marginLayoutParams.height, i2 - i3));
        return view.getMeasuredHeight() + i3;
    }

    private int a(int i, int i2) {
        if (i > 0) {
            i2 = i;
        }
        return MeasureSpec.makeMeasureSpec(i2, i == -2 ? RtlSpacingHelper.UNDEFINED : 1073741824);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (!a()) {
            if (this.y != null) {
                b(this.y, i, this.l + i2);
            }
            b(this.z, i, this.l + i2);
            b(this.w, i, this.H + i2);
        }
        if (this.A != null) {
            this.A.setVisibility(this.D == 2 ? 0 : 4);
        }
    }

    private void b(View view, int i, int i2) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        if (marginLayoutParams != null) {
            i += marginLayoutParams.leftMargin;
            i2 += marginLayoutParams.topMargin;
        }
        view.layout(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
    }

    private void b(boolean z) {
        if (z) {
            g();
        } else {
            h();
        }
    }

    private void g() {
        this.n.computeCurrentVelocity(1000, (float) this.c);
        float yVelocity = this.n.getYVelocity();
        if (this.I == null) {
            this.I = new Scroller(getContext());
        }
        this.I.setFriction(ViewConfiguration.getScrollFriction() * 3.0f);
        this.I.fling(0, 0, 0, (int) yVelocity, 0, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, RtlSpacingHelper.UNDEFINED, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        a(this.E - this.w.getTop(), this.f, this.h, 0.75f);
    }

    private void h() {
        int top = this.G - this.w.getTop();
        this.n.computeCurrentVelocity(1);
        a(top, this.n.getYVelocity(), top > 0 ? this.g : this.h, 0.0f);
    }

    private void i() {
        int height = getHeight() - this.w.getTop();
        if (height < 0) {
            f();
        } else {
            a(height, this.f, this.g, 0.0f);
        }
    }

    private void a(int i, float f, float f2, float f3) {
        if (this.y != null) {
            this.y.setVisibility(4);
        }
        aj ajVar = new aj((float) i, f, f2);
        ajVar.setAnimationListener(new ag(this));
        this.p = true;
        this.w.startAnimation(ajVar);
        a(f3, ajVar.getDuration());
    }

    private void a(float f, long j) {
        View view = this.A;
        if (view != null && j > 0) {
            float alpha = view.getAlpha();
            if (alpha != f) {
                view.setAlpha(1.0f);
                Animation alphaAnimation = new AlphaAnimation(alpha, f);
                alphaAnimation.setDuration(j);
                alphaAnimation.setAnimationListener(new ah(this, view, f));
                view.setVisibility(0);
                view.clearAnimation();
                view.startAnimation(alphaAnimation);
            }
        }
    }

    void e() {
        post(new ai(this));
    }

    void f() {
        if (this.y != null && this.D == 2) {
            this.y.setVisibility(0);
        }
        this.w.requestLayout();
        if (this.v != null) {
            this.v.d(this.D);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.p) {
            return true;
        }
        if (this.q) {
            return false;
        }
        if (motionEvent.getY() - ((float) this.H) < ((float) this.F)) {
            return false;
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int y = (int) motionEvent.getY();
        int top = this.w.getTop();
        boolean z = y >= top && y <= this.w.getBottom();
        if (this.p) {
            return true;
        }
        if (!this.q) {
            switch (motionEvent.getAction()) {
                case mx.View_android_theme /*0*/:
                    if (z && !this.o) {
                        a(motionEvent);
                    }
                    if (this.r && z) {
                        this.B = (float) y;
                        this.C = y;
                        this.n.addMovement(motionEvent);
                        return true;
                    }
                    this.o = false;
                    this.w.requestLayout();
                    return true;
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_AUTH /*3*/:
                    this.C = RtlSpacingHelper.UNDEFINED;
                    this.B = -2.14748365E9f;
                    if (this.o) {
                        this.n.addMovement(motionEvent);
                        if (this.D == 2) {
                            if (top >= this.E + 10) {
                                this.D = this.e ? 0 : 1;
                            }
                        } else if (top <= this.G - 20) {
                            this.D = 2;
                        }
                        if (this.D == 0) {
                            i();
                        } else {
                            b(this.D == 2);
                        }
                    }
                    if (z) {
                        if (this.o) {
                            motionEvent.setAction(3);
                        }
                        a(motionEvent);
                    }
                    this.n.clear();
                    this.o = false;
                    return true;
                case WireMessage.WIRE_CONTROL /*2*/:
                    int i = (int) (((float) y) - this.B);
                    this.B = (float) y;
                    boolean z2 = this.C != RtlSpacingHelper.UNDEFINED && Math.abs(this.C - y) > this.a;
                    if (y <= top || ((this.D != 1 || i >= 0) && (this.D != 2 || i <= 0))) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (z2 && r0 && this.r && !this.o) {
                        this.o = true;
                        if (this.y != null) {
                            this.y.setVisibility(4);
                        }
                        if (this.v != null) {
                            this.v.A();
                        }
                        motionEvent.setAction(3);
                        a(motionEvent);
                    }
                    if (this.o) {
                        this.n.addMovement(motionEvent);
                        int i2 = top + i;
                        if (i2 <= this.E) {
                            this.D = 2;
                            this.o = false;
                            this.q = true;
                            this.C = RtlSpacingHelper.UNDEFINED;
                            this.B = -2.14748365E9f;
                            f();
                            if (this.t) {
                                View rootView = getRootView();
                                int b = r.b((View) this, rootView);
                                MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                                obtainNoHistory.setAction(0);
                                obtainNoHistory.offsetLocation(0.0f, (((float) b) + ak.d()) + 1.0f);
                                rootView.dispatchTouchEvent(obtainNoHistory);
                                obtainNoHistory.recycle();
                                obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                                obtainNoHistory.setAction(2);
                                obtainNoHistory.offsetLocation(0.0f, (float) b);
                                rootView.dispatchTouchEvent(obtainNoHistory);
                                obtainNoHistory.recycle();
                            }
                            return false;
                        }
                        if (this.A != null) {
                            this.A.setVisibility(0);
                            this.A.setAlpha(a.a(1.0f - ((((float) i2) * 2.0f) / ((float) getHeight())), 0.0f, 0.75f));
                        }
                        if (!this.s && i2 > this.G) {
                            return true;
                        }
                        this.w.offsetTopAndBottom(i);
                        return true;
                    }
                    a(motionEvent);
                    return true;
                default:
                    return true;
            }
        } else if (!z) {
            return true;
        } else {
            a(motionEvent);
            return true;
        }
    }

    private void a(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, (float) (-this.w.getTop()));
        this.w.dispatchTouchEvent(obtain);
        obtain.recycle();
    }
}
