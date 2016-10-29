package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.RelativeLayout;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class InterceptingRelativeLayout extends RelativeLayout {
    private final int a;
    private float b;
    private float c;
    private final int d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private MotionEvent i;
    private bv j;
    private final Runnable k;

    public InterceptingRelativeLayout(Context context) {
        this(context, null);
    }

    public InterceptingRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InterceptingRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new bu(this);
        this.a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.d = ViewConfiguration.getLongPressTimeout();
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.k);
        super.onDetachedFromWindow();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View view;
        boolean z2 = false;
        if (motionEvent.getAction() == 0) {
            this.b = motionEvent.getRawX();
            this.c = motionEvent.getRawY();
            this.e = false;
            z = this.j != null && this.j.a(motionEvent.getRawY());
            this.f = z;
        }
        if (!this.f || this.j == null) {
            view = null;
        } else {
            view = this.j.w();
        }
        if (view != null) {
            switch (motionEvent.getAction()) {
                case mx.View_android_theme /*0*/:
                    this.g = false;
                    this.i = motionEvent;
                    this.h = true;
                    postDelayed(this.k, (long) this.d);
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    if (this.h) {
                        this.h = false;
                        this.i = null;
                        removeCallbacks(this.k);
                    }
                    if (!this.e) {
                        int action = motionEvent.getAction();
                        motionEvent.setAction(3);
                        view.dispatchTouchEvent(motionEvent);
                        motionEvent.setAction(action);
                        this.g = true;
                        break;
                    }
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (Math.abs(this.b - motionEvent.getRawX()) > ((float) this.a) || Math.abs(this.c - motionEvent.getRawY()) > ((float) this.a)) {
                        this.i = null;
                        this.h = false;
                        this.e = true;
                        removeCallbacks(this.k);
                        break;
                    }
                case WireMessage.WIRE_AUTH /*3*/:
                    this.i = null;
                    this.h = false;
                    removeCallbacks(this.k);
                    break;
            }
            if (!this.g) {
                z = view.dispatchTouchEvent(motionEvent);
                if (!this.e) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                if (motionEvent.getAction() == 1 && motionEvent.getAction() != 3) {
                    return z;
                }
                motionEvent.setAction(3);
                if (super.dispatchTouchEvent(motionEvent) || z) {
                    z2 = true;
                }
                return z2;
            }
        }
        z = false;
        if (!this.e) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (motionEvent.getAction() == 1) {
        }
        motionEvent.setAction(3);
        z2 = true;
        return z2;
    }

    public void setInterceptHandler(bv bvVar) {
        if (bvVar == null) {
            removeCallbacks(this.k);
        }
        this.j = bvVar;
    }
}
