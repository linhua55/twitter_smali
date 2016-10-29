package com.twitter.ui.widget.touchintercept;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import defpackage.csb;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class g implements f {
    static final /* synthetic */ boolean a;
    private final h b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int[] g;
    private VelocityTracker h;
    private float i;
    private float j;
    private float k;
    private int l;
    private boolean m;
    private boolean n;

    static {
        a = !g.class.desiredAssertionStatus();
    }

    public g(Context context, h hVar) {
        this(context.getResources().getInteger(csb.fullscreen_vertical_drag_touch_slop_multiplier) * ViewConfiguration.get(context).getScaledPagingTouchSlop(), ViewConfiguration.get(context).getScaledEdgeSlop(), ViewConfiguration.get(context).getScaledMinimumFlingVelocity(), ViewConfiguration.get(context).getScaledMaximumFlingVelocity(), hVar);
    }

    @VisibleForTesting
    g(int i, int i2, int i3, int i4, h hVar) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = new int[2];
        this.b = hVar;
    }

    public boolean b(ViewGroup viewGroup, MotionEvent motionEvent) {
        a((View) viewGroup, motionEvent);
        return this.m;
    }

    public boolean a(ViewGroup viewGroup, MotionEvent motionEvent) {
        a((View) viewGroup, motionEvent);
        return true;
    }

    @VisibleForTesting
    void a(View view, MotionEvent motionEvent) {
        boolean z = false;
        if (this.h == null) {
            this.h = VelocityTracker.obtain();
        }
        this.h.addMovement(motionEvent);
        float yVelocity;
        switch (motionEvent.getAction()) {
            case p.View_android_theme /*0*/:
                this.i = motionEvent.getRawY();
                this.j = this.i;
                this.k = 0.0f;
                this.l = motionEvent.getPointerId(0);
                int a = a(view);
                if (this.i < ((float) this.d) || this.i > ((float) (a - this.d))) {
                    z = true;
                }
                this.n = z;
            case p.View_android_focusable /*1*/:
            case p.Toolbar_contentInsetEnd /*6*/:
                if (motionEvent.findPointerIndex(this.l) != -1 && this.m) {
                    this.h.computeCurrentVelocity(1000, (float) this.f);
                    float abs = Math.abs(this.h.getXVelocity(this.l));
                    yVelocity = this.h.getYVelocity(this.l);
                    float abs2 = Math.abs(yVelocity);
                    if (abs > abs2 || abs2 < ((float) this.e)) {
                        yVelocity = 0.0f;
                    }
                    this.b.b(yVelocity);
                }
                a();
            case p.View_paddingStart /*2*/:
                if (motionEvent.findPointerIndex(this.l) != -1 && motionEvent.getPointerCount() == 1) {
                    yVelocity = motionEvent.getRawY();
                    if (!(this.n || this.m || Math.abs(yVelocity - this.i) <= ((float) this.c))) {
                        this.m = true;
                    }
                    if (this.m) {
                        this.k = (yVelocity - this.j) + this.k;
                        this.b.a(this.k);
                    }
                    this.j = yVelocity;
                }
            case p.View_paddingEnd /*3*/:
            case p.Toolbar_contentInsetStart /*5*/:
                if (this.m) {
                    this.b.b(0.0f);
                }
                a();
            default:
        }
    }

    @VisibleForTesting
    int a(View view) {
        view.getLocationOnScreen(this.g);
        return this.g[1] + view.getHeight();
    }

    private void a() {
        b();
        this.m = false;
    }

    private void b() {
        if (a || this.h != null) {
            this.h.recycle();
            this.h = null;
            return;
        }
        throw new AssertionError();
    }
}
