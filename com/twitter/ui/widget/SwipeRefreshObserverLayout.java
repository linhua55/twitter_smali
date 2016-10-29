package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class SwipeRefreshObserverLayout extends FrameLayout {
    private static final int[] a;
    private View b;
    private aa c;
    private z d;
    private y e;
    private boolean f;
    private final int g;
    private float h;
    private float i;
    private boolean j;
    private int k;

    static {
        a = new int[]{16842766};
    }

    public SwipeRefreshObserverLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshObserverLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new x(this);
        this.f = false;
        this.h = -1.0f;
        this.k = -1;
        this.g = ViewConfiguration.get(context).getScaledTouchSlop();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
        this.h = getResources().getDisplayMetrics().density * 64.0f;
    }

    public void setProgressView(z zVar) {
        this.d.setRefreshing(false);
        this.d = zVar;
        this.d.setRefreshing(this.f);
    }

    public void setOnRefreshListener(y yVar) {
        this.e = yVar;
    }

    public void setSwipeChildProvider(aa aaVar) {
        this.c = aaVar;
    }

    public void setRefreshing(boolean z) {
        a(z, false);
    }

    private void a(boolean z, boolean z2) {
        if (this.f != z) {
            this.f = z;
            this.d.setRefreshing(this.f);
            if (this.f && z2 && this.e != null) {
                this.e.a();
            }
        }
    }

    private View getSwipeChild() {
        if (this.c != null) {
            return this.c.a();
        }
        if (this.b == null) {
            this.b = getChildAt(0);
        }
        return this.b;
    }

    public void setDistanceToTriggerSync(int i) {
        this.h = (float) i;
    }

    protected boolean a() {
        boolean z = true;
        View swipeChild = getSwipeChild();
        if (VERSION.SDK_INT >= 14) {
            return ViewCompat.canScrollVertically(swipeChild, -1);
        }
        if (swipeChild instanceof AbsListView) {
            AbsListView absListView = (AbsListView) swipeChild;
            return absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
        } else {
            if (swipeChild.getScrollY() <= 0) {
                z = false;
            }
            return z;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!isEnabled() || a() || this.f) {
            return false;
        }
        float a;
        switch (actionMasked) {
            case p.View_android_theme /*0*/:
                this.k = MotionEventCompat.getPointerId(motionEvent, 0);
                this.j = false;
                a = a(motionEvent, this.k);
                if (a != -1.0f) {
                    this.i = a;
                    break;
                }
                return false;
            case p.View_android_focusable /*1*/:
            case p.View_paddingEnd /*3*/:
                this.j = false;
                this.k = -1;
                break;
            case p.View_paddingStart /*2*/:
                if (this.k == -1) {
                    return false;
                }
                a = a(motionEvent, this.k);
                if (a != -1.0f) {
                    if (a - this.i > ((float) this.g) && !this.j) {
                        this.j = true;
                        break;
                    }
                }
                return false;
            case p.Toolbar_contentInsetEnd /*6*/:
                a(motionEvent);
                break;
        }
        return this.j;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!isEnabled() || a() || this.f) {
            return false;
        }
        float y;
        switch (actionMasked) {
            case p.View_android_theme /*0*/:
                this.k = MotionEventCompat.getPointerId(motionEvent, 0);
                this.j = false;
                break;
            case p.View_android_focusable /*1*/:
            case p.View_paddingEnd /*3*/:
                if (this.k == -1) {
                    return false;
                }
                y = (MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.k)) - this.i) * 0.5f;
                this.j = false;
                if (y > this.h) {
                    a(true, true);
                } else {
                    this.d.setRefreshing(false);
                }
                this.k = -1;
                return false;
            case p.View_paddingStart /*2*/:
                actionMasked = MotionEventCompat.findPointerIndex(motionEvent, this.k);
                if (actionMasked < 0) {
                    return false;
                }
                y = (MotionEventCompat.getY(motionEvent, actionMasked) - this.i) * 0.5f;
                if (this.j) {
                    y /= this.h;
                    if (y >= 0.0f) {
                        this.d.setProgress(y);
                        break;
                    }
                    return false;
                }
                break;
            case p.Toolbar_contentInsetStart /*5*/:
                this.k = MotionEventCompat.getPointerId(motionEvent, MotionEventCompat.getActionIndex(motionEvent));
                break;
            case p.Toolbar_contentInsetEnd /*6*/:
                a(motionEvent);
                break;
        }
        return true;
    }

    private static float a(MotionEvent motionEvent, int i) {
        int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, i);
        if (findPointerIndex < 0) {
            return -1.0f;
        }
        return MotionEventCompat.getY(motionEvent, findPointerIndex);
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.k) {
            this.k = MotionEventCompat.getPointerId(motionEvent, actionIndex == 0 ? 1 : 0);
        }
    }
}
