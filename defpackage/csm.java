package defpackage;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: csm */
public class csm {
    private static final Interpolator w;
    private int a;
    private int b;
    private int c;
    private float[] d;
    private float[] e;
    private float[] f;
    private float[] g;
    private int[] h;
    private int[] i;
    private int[] j;
    private int k;
    private VelocityTracker l;
    private float m;
    private float n;
    private int o;
    private int p;
    private ScrollerCompat q;
    private final csp r;
    private View s;
    private boolean t;
    private final ViewGroup u;
    private boolean v;
    private final Runnable x;

    static {
        w = new csn();
    }

    public static csm a(ViewGroup viewGroup, csp csp) {
        return new csm(viewGroup.getContext(), viewGroup, csp);
    }

    public static csm b(ViewGroup viewGroup, csp csp) {
        csm a = csm.a(viewGroup, csp);
        a.v = true;
        return a;
    }

    private csm(Context context, ViewGroup viewGroup, csp csp) {
        this.c = -1;
        this.v = false;
        this.x = new cso(this);
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        } else if (csp == null) {
            throw new IllegalArgumentException("Callback may not be null");
        } else {
            this.u = viewGroup;
            this.r = csp;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
            this.b = viewConfiguration.getScaledTouchSlop();
            this.m = (float) viewConfiguration.getScaledMaximumFlingVelocity();
            this.n = (float) viewConfiguration.getScaledMinimumFlingVelocity();
            this.q = ScrollerCompat.create(context, w);
        }
    }

    public void a(View view, int i) {
        if (view.getParent() != this.u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
        }
        this.s = view;
        this.c = i;
        this.r.b(view, i);
        a(1);
    }

    public void a() {
        this.c = -1;
        b();
        if (this.l != null) {
            this.l.recycle();
            this.l = null;
        }
    }

    private float a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        if (abs <= f3) {
            return f;
        }
        if (f <= 0.0f) {
            return -f3;
        }
        return f3;
    }

    private void a(float f, float f2) {
        this.t = true;
        this.r.a(this.s, f, f2);
        this.t = false;
        if (this.a == 1) {
            a(0);
        }
    }

    private void b() {
        if (this.d != null) {
            Arrays.fill(this.d, 0.0f);
            Arrays.fill(this.e, 0.0f);
            Arrays.fill(this.f, 0.0f);
            Arrays.fill(this.g, 0.0f);
            Arrays.fill(this.h, 0);
            Arrays.fill(this.i, 0);
            Arrays.fill(this.j, 0);
            this.k = 0;
        }
    }

    private void b(int i) {
        if (this.d != null) {
            this.d[i] = 0.0f;
            this.e[i] = 0.0f;
            this.f[i] = 0.0f;
            this.g[i] = 0.0f;
            this.h[i] = 0;
            this.i[i] = 0;
            this.j[i] = 0;
            this.k &= (1 << i) ^ -1;
        }
    }

    private void c(int i) {
        if (this.d == null || this.d.length <= i) {
            Object obj = new float[(i + 1)];
            Object obj2 = new float[(i + 1)];
            Object obj3 = new float[(i + 1)];
            Object obj4 = new float[(i + 1)];
            Object obj5 = new int[(i + 1)];
            Object obj6 = new int[(i + 1)];
            Object obj7 = new int[(i + 1)];
            if (this.d != null) {
                System.arraycopy(this.d, 0, obj, 0, this.d.length);
                System.arraycopy(this.e, 0, obj2, 0, this.e.length);
                System.arraycopy(this.f, 0, obj3, 0, this.f.length);
                System.arraycopy(this.g, 0, obj4, 0, this.g.length);
                System.arraycopy(this.h, 0, obj5, 0, this.h.length);
                System.arraycopy(this.i, 0, obj6, 0, this.i.length);
                System.arraycopy(this.j, 0, obj7, 0, this.j.length);
            }
            this.d = obj;
            this.e = obj2;
            this.f = obj3;
            this.g = obj4;
            this.h = obj5;
            this.i = obj6;
            this.j = obj7;
        }
    }

    private void a(float f, float f2, int i) {
        c(i);
        float[] fArr = this.d;
        this.f[i] = f;
        fArr[i] = f;
        fArr = this.e;
        this.g[i] = f2;
        fArr[i] = f2;
        this.h[i] = c((int) f, (int) f2);
        this.k |= 1 << i;
    }

    private void c(MotionEvent motionEvent) {
        int pointerCount = MotionEventCompat.getPointerCount(motionEvent);
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
            float x = MotionEventCompat.getX(motionEvent, i);
            float y = MotionEventCompat.getY(motionEvent, i);
            this.f[pointerId] = x;
            this.g[pointerId] = y;
        }
    }

    void a(int i) {
        this.u.removeCallbacks(this.x);
        if (this.a != i) {
            this.a = i;
            this.r.a(i);
            if (this.a == 0) {
                this.s = null;
            }
        }
    }

    boolean b(View view, int i) {
        if (view == this.s && this.c == i) {
            return true;
        }
        if (view == null || !this.r.a(view, i)) {
            return false;
        }
        this.c = i;
        a(view, i);
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(android.view.MotionEvent r14) {
        /*
        r13 = this;
        r0 = android.support.v4.view.MotionEventCompat.getActionMasked(r14);
        r1 = android.support.v4.view.MotionEventCompat.getActionIndex(r14);
        if (r0 != 0) goto L_0x000d;
    L_0x000a:
        r13.a();
    L_0x000d:
        r2 = r13.l;
        if (r2 != 0) goto L_0x0017;
    L_0x0011:
        r2 = android.view.VelocityTracker.obtain();
        r13.l = r2;
    L_0x0017:
        r2 = r13.l;
        r2.addMovement(r14);
        switch(r0) {
            case 0: goto L_0x0026;
            case 1: goto L_0x0121;
            case 2: goto L_0x0092;
            case 3: goto L_0x0121;
            case 4: goto L_0x001f;
            case 5: goto L_0x005a;
            case 6: goto L_0x0118;
            default: goto L_0x001f;
        };
    L_0x001f:
        r0 = r13.a;
        r1 = 1;
        if (r0 != r1) goto L_0x0126;
    L_0x0024:
        r0 = 1;
    L_0x0025:
        return r0;
    L_0x0026:
        r0 = r14.getX();
        r1 = r14.getY();
        r2 = 0;
        r2 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r2);
        r13.a(r0, r1, r2);
        r0 = (int) r0;
        r1 = (int) r1;
        r0 = r13.b(r0, r1);
        r1 = r13.s;
        if (r0 != r1) goto L_0x0048;
    L_0x0040:
        r1 = r13.a;
        r3 = 2;
        if (r1 != r3) goto L_0x0048;
    L_0x0045:
        r13.b(r0, r2);
    L_0x0048:
        r0 = r13.h;
        r0 = r0[r2];
        r1 = r13.p;
        r1 = r1 & r0;
        if (r1 == 0) goto L_0x001f;
    L_0x0051:
        r1 = r13.r;
        r3 = r13.p;
        r0 = r0 & r3;
        r1.a(r0, r2);
        goto L_0x001f;
    L_0x005a:
        r0 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r1);
        r2 = android.support.v4.view.MotionEventCompat.getX(r14, r1);
        r1 = android.support.v4.view.MotionEventCompat.getY(r14, r1);
        r13.a(r2, r1, r0);
        r3 = r13.a;
        if (r3 != 0) goto L_0x007f;
    L_0x006d:
        r1 = r13.h;
        r1 = r1[r0];
        r2 = r13.p;
        r2 = r2 & r1;
        if (r2 == 0) goto L_0x001f;
    L_0x0076:
        r2 = r13.r;
        r3 = r13.p;
        r1 = r1 & r3;
        r2.a(r1, r0);
        goto L_0x001f;
    L_0x007f:
        r3 = r13.a;
        r4 = 2;
        if (r3 != r4) goto L_0x001f;
    L_0x0084:
        r2 = (int) r2;
        r1 = (int) r1;
        r1 = r13.b(r2, r1);
        r2 = r13.s;
        if (r1 != r2) goto L_0x001f;
    L_0x008e:
        r13.b(r1, r0);
        goto L_0x001f;
    L_0x0092:
        r0 = r13.d;
        if (r0 == 0) goto L_0x001f;
    L_0x0096:
        r0 = r13.e;
        if (r0 == 0) goto L_0x001f;
    L_0x009a:
        r2 = android.support.v4.view.MotionEventCompat.getPointerCount(r14);
        r0 = 0;
        r1 = r0;
    L_0x00a0:
        if (r1 >= r2) goto L_0x00fd;
    L_0x00a2:
        r3 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r1);
        r0 = android.support.v4.view.MotionEventCompat.getX(r14, r1);
        r4 = android.support.v4.view.MotionEventCompat.getY(r14, r1);
        r5 = r13.d;
        r5 = r5[r3];
        r5 = r0 - r5;
        r6 = r13.e;
        r6 = r6[r3];
        r6 = r4 - r6;
        r0 = (int) r0;
        r4 = (int) r4;
        r4 = r13.b(r0, r4);
        if (r4 == 0) goto L_0x0102;
    L_0x00c2:
        r0 = r13.a(r4, r5, r6);
        if (r0 == 0) goto L_0x0102;
    L_0x00c8:
        r0 = 1;
    L_0x00c9:
        if (r0 == 0) goto L_0x0104;
    L_0x00cb:
        r7 = r4.getLeft();
        r8 = (int) r5;
        r8 = r8 + r7;
        r9 = r13.r;
        r10 = (int) r5;
        r8 = r9.a(r4, r8, r10);
        r9 = r4.getTop();
        r10 = (int) r6;
        r10 = r10 + r9;
        r11 = r13.r;
        r12 = (int) r6;
        r10 = r11.b(r4, r10, r12);
        r11 = r13.r;
        r11 = r11.a(r4);
        r12 = r13.r;
        r12 = r12.b(r4);
        if (r11 == 0) goto L_0x00f7;
    L_0x00f3:
        if (r11 <= 0) goto L_0x0104;
    L_0x00f5:
        if (r8 != r7) goto L_0x0104;
    L_0x00f7:
        if (r12 == 0) goto L_0x00fd;
    L_0x00f9:
        if (r12 <= 0) goto L_0x0104;
    L_0x00fb:
        if (r10 != r9) goto L_0x0104;
    L_0x00fd:
        r13.c(r14);
        goto L_0x001f;
    L_0x0102:
        r0 = 0;
        goto L_0x00c9;
    L_0x0104:
        r13.b(r5, r6, r3);
        r5 = r13.a;
        r6 = 1;
        if (r5 == r6) goto L_0x00fd;
    L_0x010c:
        if (r0 == 0) goto L_0x0114;
    L_0x010e:
        r0 = r13.b(r4, r3);
        if (r0 != 0) goto L_0x00fd;
    L_0x0114:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x00a0;
    L_0x0118:
        r0 = android.support.v4.view.MotionEventCompat.getPointerId(r14, r1);
        r13.b(r0);
        goto L_0x001f;
    L_0x0121:
        r13.a();
        goto L_0x001f;
    L_0x0126:
        r0 = 0;
        goto L_0x0025;
        */
        throw new UnsupportedOperationException("Method not decompiled: csm.a(android.view.MotionEvent):boolean");
    }

    public void b(MotionEvent motionEvent) {
        int i = 0;
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        float x;
        float y;
        View b;
        int i2;
        switch (actionMasked) {
            case p.View_android_theme /*0*/:
                x = motionEvent.getX();
                y = motionEvent.getY();
                i = MotionEventCompat.getPointerId(motionEvent, 0);
                b = b((int) x, (int) y);
                a(x, y, i);
                b(b, i);
                i2 = this.h[i];
                if ((this.p & i2) != 0) {
                    this.r.a(i2 & this.p, i);
                }
            case p.View_android_focusable /*1*/:
                if (this.a == 1) {
                    c();
                }
                a();
            case p.View_paddingStart /*2*/:
                if (this.a == 1) {
                    i = MotionEventCompat.findPointerIndex(motionEvent, this.c);
                    x = MotionEventCompat.getX(motionEvent, i);
                    i2 = (int) (x - this.f[this.c]);
                    i = (int) (MotionEventCompat.getY(motionEvent, i) - this.g[this.c]);
                    a(this.s.getLeft() + i2, this.s.getTop() + i, i2, i);
                    c(motionEvent);
                    return;
                }
                i2 = MotionEventCompat.getPointerCount(motionEvent);
                while (i < i2) {
                    actionMasked = MotionEventCompat.getPointerId(motionEvent, i);
                    float x2 = MotionEventCompat.getX(motionEvent, i);
                    float y2 = MotionEventCompat.getY(motionEvent, i);
                    float f = x2 - this.d[actionMasked];
                    float f2 = y2 - this.e[actionMasked];
                    b(f, f2, actionMasked);
                    if (this.a != 1) {
                        b = b((int) x2, (int) y2);
                        if (!a(b, f, f2) || !b(b, actionMasked)) {
                            i++;
                        }
                    }
                    c(motionEvent);
                }
                c(motionEvent);
            case p.View_paddingEnd /*3*/:
                if (this.a == 1) {
                    a(0.0f, 0.0f);
                }
                a();
            case p.Toolbar_contentInsetStart /*5*/:
                i = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                x = MotionEventCompat.getX(motionEvent, actionIndex);
                y = MotionEventCompat.getY(motionEvent, actionIndex);
                a(x, y, i);
                if (this.a == 0) {
                    b(b((int) x, (int) y), i);
                    i2 = this.h[i];
                    if ((this.p & i2) != 0) {
                        this.r.a(i2 & this.p, i);
                    }
                } else if (a((int) x, (int) y)) {
                    b(this.s, i);
                }
            case p.Toolbar_contentInsetEnd /*6*/:
                actionMasked = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                if (this.a == 1 && actionMasked == this.c) {
                    actionIndex = MotionEventCompat.getPointerCount(motionEvent);
                    while (i < actionIndex) {
                        int pointerId = MotionEventCompat.getPointerId(motionEvent, i);
                        if (pointerId != this.c) {
                            if (b((int) MotionEventCompat.getX(motionEvent, i), (int) MotionEventCompat.getY(motionEvent, i)) == this.s && b(this.s, pointerId)) {
                                i = this.c;
                                if (i == -1) {
                                    c();
                                }
                            }
                        }
                        i++;
                    }
                    i = -1;
                    if (i == -1) {
                        c();
                    }
                }
                b(actionMasked);
            default:
        }
    }

    private void b(float f, float f2, int i) {
        int i2 = 1;
        if (!a(f, f2, i, 1)) {
            i2 = 0;
        }
        if (a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.i;
            iArr[i] = iArr[i] | i2;
            this.r.b(i2, i);
        }
    }

    private boolean a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.h[i] & i2) != i2 || (this.p & i2) == 0 || (this.j[i] & i2) == i2 || (this.i[i] & i2) == i2) {
            return false;
        }
        if (abs <= ((float) this.b) && abs2 <= ((float) this.b)) {
            return false;
        }
        if (abs < abs2 * 0.5f && this.r.b(i2)) {
            int[] iArr = this.j;
            iArr[i] = iArr[i] | i2;
            return false;
        } else if ((this.i[i] & i2) != 0 || abs <= ((float) this.b)) {
            return false;
        } else {
            return true;
        }
    }

    private boolean a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z;
        boolean z2;
        if (this.r.a(view) > 0) {
            z = true;
        } else {
            z = false;
        }
        if (this.r.b(view) > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && z2) {
            if ((f * f) + (f2 * f2) <= ((float) (this.b * this.b))) {
                return false;
            }
            return true;
        } else if (z) {
            if (Math.abs(f) <= ((float) this.b)) {
                return false;
            }
            return true;
        } else if (!z2) {
            return false;
        } else {
            if (Math.abs(f2) <= ((float) this.b)) {
                return false;
            }
            return true;
        }
    }

    private void c() {
        this.l.computeCurrentVelocity(1000, this.m);
        a(a(VelocityTrackerCompat.getXVelocity(this.l, this.c), this.n, this.m), a(VelocityTrackerCompat.getYVelocity(this.l, this.c), this.n, this.m));
    }

    private void a(int i, int i2, int i3, int i4) {
        int a;
        int b;
        int left = this.s.getLeft();
        int top = this.s.getTop();
        if (i3 != 0) {
            a = this.r.a(this.s, i, i3);
            this.s.offsetLeftAndRight(a - left);
        } else {
            a = i;
        }
        if (i4 != 0) {
            b = this.r.b(this.s, i2, i4);
            this.s.offsetTopAndBottom(b - top);
        } else {
            b = i2;
        }
        if (i3 != 0 || i4 != 0) {
            this.r.a(this.s, a, b, a - left, b - top);
        }
    }

    public boolean a(int i, int i2) {
        return a(this.s, i, i2);
    }

    public boolean a(View view, int i, int i2) {
        if (view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom()) {
            return true;
        }
        return false;
    }

    public View b(int i, int i2) {
        if (this.v) {
            return this.u.getChildAt(this.r.c(0));
        }
        for (int childCount = this.u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.u.getChildAt(this.r.c(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int c(int i, int i2) {
        int i3 = 0;
        if (i < this.u.getLeft() + this.o) {
            i3 = 1;
        }
        if (i2 < this.u.getTop() + this.o) {
            i3 |= 4;
        }
        if (i > this.u.getRight() - this.o) {
            i3 |= 2;
        }
        if (i2 > this.u.getBottom() - this.o) {
            return i3 | 8;
        }
        return i3;
    }
}
