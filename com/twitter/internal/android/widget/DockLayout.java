package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import bct;
import bdd;
import com.twitter.android.mx;
import com.twitter.util.m;
import defpackage.cfb;
import java.util.HashSet;
import java.util.Set;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class DockLayout extends ViewGroup {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private int H;
    private int I;
    private int J;
    private int K;
    private boolean L;
    private final int a;
    private final int b;
    private final h c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final Rect j;
    private View k;
    private View l;
    private final Set<g> m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private int r;
    private VelocityTracker s;
    private int t;
    private j u;
    private j v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    public DockLayout(Context context) {
        this(context, null, bct.dockLayoutStyle);
    }

    public DockLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.dockLayoutStyle);
    }

    public DockLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.j = new Rect();
        this.m = new HashSet();
        this.r = 0;
        this.t = -1;
        this.G = 10000;
        this.J = 10000;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.DockLayout, i, 0);
        this.a = obtainStyledAttributes.getResourceId(bdd.DockLayout_topDockId, 0);
        this.b = obtainStyledAttributes.getResourceId(bdd.DockLayout_bottomDockId, 0);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f = viewConfiguration.getScaledTouchSlop();
        this.c = new h(this, null);
        this.d = viewConfiguration.getScaledMinimumFlingVelocity();
        this.e = viewConfiguration.getScaledMaximumFlingVelocity();
        this.g = obtainStyledAttributes.getDimensionPixelSize(bdd.DockLayout_topPeek, obtainStyledAttributes.getDimensionPixelSize(bdd.DockLayout_turtle, 0));
        this.h = obtainStyledAttributes.getDimensionPixelSize(bdd.DockLayout_bottomPeek, 0);
        this.i = obtainStyledAttributes.getInt(bdd.DockLayout_scrollDrive, 0);
        this.y = obtainStyledAttributes.getBoolean(bdd.DockLayout_autoUnlock, true);
        boolean z = obtainStyledAttributes.getBoolean(bdd.DockLayout_disableAccessibilityLockOverride, false);
        if (!isInEditMode()) {
            AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
            boolean z2 = !z && accessibilityManager.isEnabled() && AccessibilityManagerCompat.isTouchExplorationEnabled(accessibilityManager);
            this.x = z2;
            if (this.x) {
                this.q = true;
                this.z = true;
                this.A = true;
            }
        }
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() < 2) {
            throw new IllegalStateException("DockLayout must contain at least two children");
        }
        a();
    }

    public void a() {
        if (this.a != 0) {
            setTopDockView(findViewById(this.a));
        }
        if (this.b != 0) {
            setBottomDockView(findViewById(this.b));
        }
    }

    protected void onMeasure(int i, int i2) {
        View childAt;
        boolean z = false;
        setMeasuredDimension(MeasureSpec.getSize(i), MeasureSpec.getSize(i2));
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            childAt = getChildAt(i3);
            if (!(childAt == null || childAt.getVisibility() == 8)) {
                measureChildWithMargins(childAt, i, 0, i2, 0);
                a(childAt, 0, 0);
            }
        }
        View view = this.k;
        childAt = this.l;
        if (view != null) {
            this.F = getTopPeek() - view.getMeasuredHeight();
            this.H = view.getMeasuredHeight() - getTopPeek();
            a(view, 0, this.F + ((this.G * this.H) / 10000));
        } else {
            this.H = 0;
        }
        if (childAt != null) {
            this.I = getMeasuredHeight() - getBottomPeek();
            this.K = childAt.getMeasuredHeight() - getBottomPeek();
            a(childAt, 0, this.I - ((this.J * this.K) / 10000));
        } else {
            this.K = 0;
        }
        if (!(this.H == 0 && this.K == 0)) {
            z = true;
        }
        this.L = z;
        if (!this.L) {
            return;
        }
        if (this.i == 0 && this.H == 0) {
            this.H = this.K;
        } else if (this.i == 1 && this.K == 0) {
            this.K = this.H;
        }
    }

    private void d() {
        int i;
        cfb.b("DockLayout", "updateBarPositions()");
        View view = this.k;
        View view2 = this.l;
        if (view != null) {
            i = this.F + ((this.G * this.H) / 10000);
            int top = i - view.getTop();
            if (top != 0) {
                cfb.b("DockLayout", "topBarView.offsetTopAndBottom(" + top + ");");
                view.offsetTopAndBottom(top);
                a(view, view.getLeft(), i);
                f();
                if (this.G == 0) {
                    this.B = false;
                    this.C = true;
                } else if (this.G == 10000) {
                    this.B = false;
                    this.C = false;
                } else {
                    this.B = true;
                }
            }
        }
        if (view2 != null) {
            int i2 = this.I - ((this.J * this.K) / 10000);
            i = i2 - view2.getTop();
            if (i != 0) {
                cfb.b("DockLayout", "bottomBarView.offsetTopAndBottom(" + i + ");");
                view2.offsetTopAndBottom(i);
                a(view2, view2.getLeft(), i2);
                g();
                if (this.J == 0) {
                    this.D = false;
                    this.E = true;
                } else if (this.J == 10000) {
                    this.D = false;
                    this.E = false;
                } else {
                    this.D = true;
                }
            }
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        cfb.b("DockLayout", "dispatchTouchEvent: " + motionEvent + ", start time: " + m.b());
        if (onFilterTouchEventForSecurity(motionEvent)) {
            if (this.s == null) {
                this.s = VelocityTracker.obtain();
            }
            this.s.addMovement(motionEvent);
            int action = motionEvent.getAction() & MotionEventCompat.ACTION_MASK;
            cfb.b("DockLayout", "action: " + action + " mTouchMode: " + this.r + " ev.getX(): " + motionEvent.getX() + " ev.getY(): " + motionEvent.getY());
            int y;
            switch (action) {
                case mx.View_android_theme /*0*/:
                    action = (int) motionEvent.getX();
                    y = (int) motionEvent.getY();
                    if (!a(action, y)) {
                        this.o = action;
                        this.p = y;
                        this.n = y;
                        this.t = motionEvent.getPointerId(0);
                        break;
                    }
                    cfb.b("DockLayout", "DOWN dispatchTouchEvent - checkHitRect = true" + m.b());
                    this.w = true;
                    return super.dispatchTouchEvent(motionEvent);
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_AUTH /*3*/:
                    if (!this.w && ((!this.q || this.y) && this.r != 1)) {
                        this.s.computeCurrentVelocity(1000, (float) this.e);
                        action = (int) VelocityTrackerCompat.getYVelocity(this.s, this.t);
                        if (Math.abs(action) <= this.d) {
                            cfb.b("DockLayout", "UP dispatchTouchEvent - settledock()");
                            e();
                        } else if (action < 0) {
                            cfb.b("DockLayout", "UP dispatchTouchEvent - dock()");
                            b(100);
                        } else {
                            cfb.b("DockLayout", "UP dispatchTouchEvent - undock()");
                            a(100);
                        }
                    }
                    this.r = 0;
                    this.t = -1;
                    this.s.recycle();
                    this.s = null;
                    this.w = false;
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    View view = this.k;
                    View view2 = this.l;
                    action = motionEvent.findPointerIndex(this.t);
                    if (action == -1) {
                        this.t = motionEvent.getPointerId(0);
                        action = 0;
                    }
                    int y2 = (int) motionEvent.getY(action);
                    action = (int) motionEvent.getX(action);
                    if (!this.w && !this.q && ((view != null || view2 != null) && this.r != 1)) {
                        if (this.r == 0) {
                            if (Math.abs(this.p - y2) > this.f) {
                                this.r = 2;
                            } else if (Math.abs(this.o - action) > this.f) {
                                this.r = 1;
                                this.n = y2;
                                cfb.b("DockLayout", "MOVE dispatchTouchEvent - second super.dispatchTouchEvent()");
                                return super.dispatchTouchEvent(motionEvent);
                            }
                        }
                        if (this.r == 2 && this.L) {
                            cfb.b("DockLayout", "MOVE dispatchTouchEvent - scrolling vertical");
                            this.c.b();
                            if (this.i == 0) {
                                action = ((this.n - y2) * 10000) / this.H;
                                y = action;
                            } else if (this.i == 1) {
                                action = ((this.n - y2) * 10000) / this.K;
                                y = action;
                            } else {
                                y = ((this.n - y2) * 10000) / this.H;
                                action = ((this.n - y2) * 10000) / this.K;
                            }
                            if (y > 0) {
                                if (!(view == null || this.z || this.G <= 0)) {
                                    this.G = Math.max(0, this.G - y);
                                    if (this.G == 0) {
                                        setTopDocked(true);
                                    }
                                }
                                if (!(view2 == null || this.A || this.J <= 0)) {
                                    this.J = Math.max(0, this.J - action);
                                    if (this.J == 0) {
                                        setBottomDocked(true);
                                    }
                                }
                            } else {
                                if (view != null) {
                                    this.G = Math.min(10000, this.G - y);
                                    if (this.G == 10000) {
                                        setTopDocked(false);
                                    }
                                }
                                if (!(view2 == null || this.A || this.J >= 10000)) {
                                    this.J = Math.min(10000, this.J - action);
                                    if (this.J == 10000) {
                                        setBottomDocked(false);
                                    }
                                }
                            }
                        }
                        this.n = y2;
                        d();
                        invalidate();
                        break;
                    }
                    this.n = y2;
                    cfb.b("DockLayout", "MOVE dispatchTouchEvent - first super.dispatchTouchEvent()");
                    return super.dispatchTouchEvent(motionEvent);
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    action = motionEvent.getActionIndex();
                    int x = (int) motionEvent.getX(action);
                    y = (int) motionEvent.getY(action);
                    if (!a(x, y)) {
                        this.o = x;
                        this.p = y;
                        this.n = y;
                        this.t = motionEvent.getPointerId(action);
                        break;
                    }
                    this.w = true;
                    cfb.b("DockLayout", "POINTER_DOWN dispatchTouchEvent - super.dispatchTouchEvent()");
                    return super.dispatchTouchEvent(motionEvent);
            }
            cfb.b("DockLayout", "endtime: " + m.b());
            return super.dispatchTouchEvent(motionEvent);
        }
        cfb.b("DockLayout", "entime (!onFilterTouchEventForSecurity()): " + m.b());
        return false;
    }

    private boolean a(int i, int i2) {
        boolean z = false;
        if (this.k != null) {
            this.k.getHitRect(this.j);
            z = false | this.j.contains(i, i2);
        }
        if (this.l == null) {
            return z;
        }
        this.l.getHitRect(this.j);
        return z | this.j.contains(i, i2);
    }

    int getTopPeek() {
        return Math.min(this.g, this.k == null ? 0 : this.k.getMeasuredHeight());
    }

    int getBottomPeek() {
        return Math.min(this.h, this.l == null ? 0 : this.l.getMeasuredHeight());
    }

    public void a(int i) {
        if (this.k != null || this.l != null) {
            this.c.a(i, false, false);
        }
    }

    public void b() {
        a(250);
    }

    public void b(int i) {
        boolean z = true;
        if (this.k != null || this.l != null) {
            boolean z2;
            h hVar = this.c;
            if (this.z) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (this.A) {
                z = false;
            }
            hVar.a(i, z2, z);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            RectLayoutParams rectLayoutParams = (RectLayoutParams) childAt.getLayoutParams();
            childAt.layout(rectLayoutParams.a, rectLayoutParams.b, rectLayoutParams.c, rectLayoutParams.d);
        }
        this.c.a();
        f();
        g();
    }

    protected RectLayoutParams a(View view, int i, int i2) {
        if (view == null) {
            return null;
        }
        RectLayoutParams rectLayoutParams = (RectLayoutParams) view.getLayoutParams();
        rectLayoutParams.a(i, i2, view.getMeasuredWidth() + i, view.getMeasuredHeight() + i2);
        return rectLayoutParams;
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new RectLayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new RectLayoutParams(layoutParams);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new RectLayoutParams(-1, -1);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof RectLayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void setLocked(boolean z) {
        if (!this.x && z != this.q) {
            this.q = z;
            this.z = z;
            this.A = z;
            e();
        }
    }

    public void setTopLocked(boolean z) {
        if (!this.x && z != this.z) {
            this.z = z;
            e();
        }
    }

    public void setBottomLocked(boolean z) {
        if (!this.x && z != this.A) {
            this.A = z;
            e();
        }
    }

    public void setTopVisible(boolean z) {
        int i = 0;
        if (this.k != null) {
            if (z != (this.k.getVisibility() == 0)) {
                View view = this.k;
                if (!z) {
                    i = 8;
                }
                view.setVisibility(i);
                h();
            }
        }
    }

    public void setBottomVisible(boolean z) {
        if (this.l != null) {
            this.l.setVisibility(z ? 0 : 8);
        }
    }

    private void e() {
        boolean z = true;
        cfb.b("DockLayout", "settleDock()");
        if (this.k != null || this.l != null) {
            boolean z2 = this.z ? false : this.k != null ? this.G < 5000 : true;
            if (this.A) {
                z = false;
            } else if (this.l != null && this.J >= 5000) {
                z = false;
            }
            this.c.a(250, z2, z);
        }
    }

    public void setTopView(View view) {
        this.k = view;
        if (this.k instanceof j) {
            this.u = (j) view;
        } else {
            this.u = null;
        }
        postInvalidate();
    }

    public View getTopDockView() {
        return this.k;
    }

    public void setTopDockView(View view) {
        this.k = view;
        this.u = this.k instanceof j ? (j) view : null;
        requestLayout();
    }

    public View getBottomDockView() {
        return this.l;
    }

    public void setBottomDockView(View view) {
        this.l = view;
        this.v = this.l instanceof j ? (j) view : null;
        requestLayout();
    }

    public void a(g gVar) {
        this.m.add(gVar);
    }

    void setBottomDocked(boolean z) {
        if (!this.A) {
            if (this.D || z != this.E) {
                if (this.v != null) {
                    this.v.setDocked(z);
                }
                for (g gVar : this.m) {
                    if (z) {
                        gVar.a();
                    } else {
                        gVar.b();
                    }
                }
            }
        }
    }

    void setTopDocked(boolean z) {
        if (!this.z) {
            if (this.B || z != this.C) {
                if (this.u != null) {
                    this.u.setDocked(z);
                }
                for (g gVar : this.m) {
                    if (z) {
                        gVar.c();
                    } else {
                        gVar.d();
                    }
                }
            }
        }
    }

    private void f() {
        if (this.k != null) {
            for (g a : this.m) {
                a.a(this.k.getLeft(), this.k.getTop(), this.k.getRight(), this.k.getBottom());
            }
        }
    }

    private void g() {
        if (this.l != null) {
            for (g b : this.m) {
                b.b(this.l.getLeft(), this.l.getTop(), this.l.getRight(), this.l.getBottom());
            }
        }
    }

    private void h() {
        if (this.k != null) {
            boolean z = this.k.getVisibility() == 0;
            for (g a : this.m) {
                a.a(z);
            }
        }
    }

    public void setAutoUnlockEnabled(boolean z) {
        this.y = z;
    }

    public boolean c() {
        return this.a != 0;
    }
}
