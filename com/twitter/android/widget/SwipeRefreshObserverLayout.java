package com.twitter.android.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.AbsListView;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class SwipeRefreshObserverLayout extends ViewGroup {
    private ez a;
    private MotionEvent b;
    private boolean c;
    private final int d;
    private float e;
    private boolean f;
    private final LinearInterpolator g;

    public SwipeRefreshObserverLayout(Context context) {
        this(context, null);
    }

    public SwipeRefreshObserverLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        this.e = -1.0f;
        setWillNotDraw(true);
        this.d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.g = new LinearInterpolator();
    }

    private void setTriggerPercentage(float f) {
        if (f != 0.0f) {
            this.a.b(f);
        }
    }

    public void a(boolean z, boolean z2) {
        if (this.c != z) {
            this.c = z;
            if (z2) {
                this.a.a(z);
            }
        }
    }

    public void setRefreshing(boolean z) {
        a(z, true);
    }

    private void a() {
        if (this.e == -1.0f) {
            View view = (View) getParent();
            if (view != null && view.getHeight() > 0) {
                this.e = (float) ((int) Math.min(((float) view.getHeight()) * 0.6f, getResources().getDisplayMetrics().density * 240.0f));
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            View childAt = getChildAt(0);
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            childAt.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        }
    }

    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getChildCount() > 1 && !isInEditMode()) {
            throw new IllegalStateException("SwipeRefreshLayout can host only one direct child");
        } else if (getChildCount() > 0) {
            getChildAt(0).measure(MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        }
    }

    private boolean b() {
        if (this.a == null) {
            return false;
        }
        View v = this.a.v();
        if (v == null) {
            return true;
        }
        if (VERSION.SDK_INT >= 14) {
            return ViewCompat.canScrollVertically(v, -1);
        }
        if (v instanceof AbsListView) {
            AbsListView absListView = (AbsListView) v;
            boolean z = absListView.getChildCount() > 0 && (absListView.getFirstVisiblePosition() > 0 || absListView.getChildAt(0).getTop() < absListView.getPaddingTop());
            return z;
        } else if (v.getScrollY() <= 0) {
            return false;
        } else {
            return true;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        a();
        if (this.f && motionEvent.getAction() == 0) {
            this.f = false;
        }
        if (!isEnabled() || this.f || b() || this.c) {
            z = false;
        } else {
            z = onTouchEvent(motionEvent);
        }
        if (z || super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = true;
        switch (motionEvent.getAction()) {
            case mx.View_android_theme /*0*/:
                this.b = MotionEvent.obtain(motionEvent);
                return false;
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                if (this.b != null) {
                    this.b.recycle();
                    this.b = null;
                }
                if (this.a == null) {
                    return false;
                }
                this.a.x();
                return false;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.a == null || this.b == null || this.f) {
                    return false;
                }
                float y = motionEvent.getY() - this.b.getY();
                if (Math.abs(motionEvent.getX() - this.b.getX()) > y) {
                    return false;
                }
                if (y <= ((float) this.d)) {
                    z = false;
                } else if (y > this.e) {
                    return true;
                } else {
                    setTriggerPercentage(this.g.getInterpolation(y / this.e));
                }
                return z;
            default:
                return false;
        }
    }

    public void setSwipeListener(ez ezVar) {
        this.a = ezVar;
    }
}
