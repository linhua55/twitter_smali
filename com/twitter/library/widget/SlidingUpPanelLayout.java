package com.twitter.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import com.twitter.android.mx;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class SlidingUpPanelLayout extends ViewGroup {
    private float A;
    private float B;
    private float C;
    private boolean D;
    private boolean E;
    private View F;
    private MotionEvent G;
    private final int a;
    private final int b;
    private int c;
    private int d;
    private final Paint e;
    private Drawable f;
    private int g;
    private final int h;
    private boolean i;
    private View j;
    private View k;
    private float l;
    private int m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private boolean r;
    private ac s;
    private final ViewDragHelper t;
    private boolean u;
    private final Rect v;
    private final Handler w;
    private final int[] x;
    private final int[] y;
    private float z;

    SlidingUpPanelLayout(Context context) {
        this(context, null);
    }

    SlidingUpPanelLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    SlidingUpPanelLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = 0;
        this.d = -1728053248;
        this.e = new Paint();
        this.u = true;
        this.v = new Rect();
        this.w = new Handler(Looper.getMainLooper());
        float f = context.getResources().getDisplayMetrics().density;
        this.g = (int) ((44.0f * f) + 0.5f);
        this.h = (int) ((4.0f * f) + 0.5f);
        setWillNotDraw(false);
        this.t = ViewDragHelper.create(this, 0.5f, new aa(this, null));
        this.t.setMinVelocity(f * 400.0f);
        this.i = true;
        this.r = true;
        setCoveredFadeColor(-1728053248);
        this.o = 0;
        this.p = 7;
        this.n = -1;
        int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.a = scaledTouchSlop * scaledTouchSlop;
        this.b = ViewConfiguration.getTapTimeout();
        this.x = new int[2];
        this.y = new int[2];
    }

    public void setClipChildren(boolean z) {
        this.r = z;
    }

    public void setCoveredFadeColor(int i) {
        this.d = i;
        invalidate();
    }

    public void setFadeMode(int i) {
        this.c = i;
    }

    public int getCoveredFadeColor() {
        return this.d;
    }

    public void setPanelPeekHeight(int i) {
        this.g = i;
    }

    public int getPanelPeekHeight() {
        return this.g;
    }

    public void setPanelPreviewHeight(int i) {
        this.n = i;
    }

    public int getPanelPreviewHeight() {
        return this.n;
    }

    public void setPanelSlideListener(ac acVar) {
        this.s = acVar;
    }

    public void setPossiblePanelStates(int i) {
        this.p = i;
        if ((this.o & this.p) == 0) {
            d();
        }
    }

    public void b(int i) {
        setPossiblePanelStates(this.p | i);
    }

    public void a(int i) {
        setPossiblePanelStates(this.p & (i ^ -1));
    }

    public int getPossibleStates() {
        return this.p;
    }

    public void setDragView(View view) {
        this.j = view;
    }

    public void setShadowDrawable(Drawable drawable) {
        this.f = drawable;
    }

    void a(View view) {
        if (this.s != null) {
            this.s.a(view, this.l);
        }
    }

    void a(View view, int i) {
        Object obj = 1;
        if (this.s != null) {
            switch (i) {
                case mx.View_android_theme /*0*/:
                    this.s.a(view);
                    break;
                case WireMessage.WIRE_CHAT /*1*/:
                    this.s.d(view);
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    this.s.c(view);
                    break;
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    this.s.b(view);
                    break;
                default:
                    obj = null;
                    break;
            }
            if (obj != null) {
                sendAccessibilityEvent(32);
            }
        }
    }

    void e() {
        int i = 0;
        if (getChildCount() != 0) {
            int i2;
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int i3;
            int i4;
            int i5;
            if (this.k == null || !b(this.k)) {
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i2 = 0;
            } else {
                i2 = this.k.getLeft();
                i5 = this.k.getRight();
                i4 = this.k.getTop();
                i3 = this.k.getBottom();
            }
            View childAt = getChildAt(0);
            paddingLeft = Math.max(paddingLeft, childAt.getLeft());
            paddingTop = Math.max(paddingTop, childAt.getTop());
            width = Math.min(width, childAt.getRight());
            height = Math.min(height, childAt.getBottom());
            if (paddingLeft >= i2 && paddingTop >= r2 && width <= r3 && height <= r0) {
                i = 4;
            }
            childAt.setVisibility(i);
        }
    }

    void f() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean b(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.u = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.u = true;
        if (this.G != null) {
            this.G.recycle();
            this.G = null;
        }
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        } else if (mode2 != 1073741824) {
            throw new IllegalStateException("Height must have an exact value or MATCH_PARENT");
        } else {
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int childCount = getChildCount();
            if (childCount > 2) {
                throw new IllegalStateException("onMeasure: More than two child views are not supported.");
            }
            this.k = null;
            this.i = false;
            if (this.n == -1) {
                this.n = paddingTop / 2;
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                ab abVar = (ab) childAt.getLayoutParams();
                if (childAt.getVisibility() == 8) {
                    abVar.b = false;
                } else {
                    int makeMeasureSpec;
                    if (i3 == 1) {
                        abVar.a = true;
                        abVar.b = true;
                        this.k = childAt;
                        this.i = true;
                        if ((this.p & 4) != 0) {
                            mode2 = paddingTop;
                        } else if ((this.p & 2) != 0) {
                            mode2 = this.n;
                        } else {
                            mode2 = this.g;
                        }
                    } else {
                        mode2 = paddingTop;
                    }
                    if (abVar.width == -2) {
                        makeMeasureSpec = MeasureSpec.makeMeasureSpec(paddingLeft, RtlSpacingHelper.UNDEFINED);
                    } else if (abVar.width == -1) {
                        makeMeasureSpec = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
                    } else {
                        makeMeasureSpec = MeasureSpec.makeMeasureSpec(abVar.width, 1073741824);
                    }
                    if (abVar.height == -2) {
                        mode = MeasureSpec.makeMeasureSpec(mode2, RtlSpacingHelper.UNDEFINED);
                    } else if (abVar.height == -1) {
                        mode = MeasureSpec.makeMeasureSpec(mode2, 1073741824);
                    } else {
                        mode = MeasureSpec.makeMeasureSpec(abVar.height, 1073741824);
                    }
                    childAt.measure(makeMeasureSpec, mode);
                }
            }
            setMeasuredDimension(size, size2);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int bottom = getBottom() - getPaddingBottom();
        int i5 = paddingTop;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                ab abVar = (ab) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                if (abVar.a) {
                    bottom = getMeasuredHeight();
                    this.m = this.n - this.g;
                    switch (this.o) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            bottom -= this.g;
                            break;
                        case WireMessage.WIRE_CONTROL /*2*/:
                            bottom -= this.n;
                            break;
                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                            bottom = paddingTop;
                            break;
                    }
                }
                bottom = i5;
                childAt.layout(paddingLeft, bottom, childAt.getMeasuredWidth() + paddingLeft, measuredHeight + bottom);
                i5 += childAt.getHeight();
            }
        }
        if (this.u) {
            this.l = this.m != 0 ? ((float) (bottom - (getMeasuredHeight() - this.n))) / ((float) this.m) : 1.0f;
            e();
        }
        this.u = false;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 != i4) {
            this.u = true;
        }
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }

    @TargetApi(17)
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(0, 0, 0, 0);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4 || keyEvent.isCanceled() || this.o == 0 || keyEvent.getAction() != 1) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return g();
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!this.i || (this.q && actionMasked != 0)) {
            this.t.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (motionEvent.getPointerCount() > 1) {
            this.t.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        } else {
            boolean z;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            switch (actionMasked) {
                case mx.View_android_theme /*0*/:
                    this.C = 0.0f;
                    this.q = false;
                    this.E = false;
                    this.z = y;
                    this.w.removeMessages(0);
                    switch (this.o) {
                        case WireMessage.WIRE_CHAT /*1*/:
                        case WireMessage.WIRE_CONTROL /*2*/:
                        case ControlMessage.CONTROL_PRESENCE /*4*/:
                            this.D = this.t.isViewUnder(this.k, (int) x, (int) y);
                            if (!this.D) {
                                this.w.sendEmptyMessageDelayed(0, (long) this.b);
                                if (this.o != 2) {
                                    z = false;
                                    break;
                                }
                                z = true;
                                break;
                            }
                            if (this.j != null) {
                                getLocationOnScreen(this.x);
                                this.j.getLocationOnScreen(this.y);
                                this.D = this.t.isViewUnder(this.j, ((int) x) - (this.y[0] - this.x[0]), ((int) y) - (this.y[1] - this.x[1]));
                            }
                            z = this.D;
                            break;
                        default:
                            this.D = false;
                            z = false;
                            break;
                    }
                case WireMessage.WIRE_CHAT /*1*/:
                    z = a(x, y);
                    this.E = z;
                    break;
                default:
                    z = false;
                    break;
            }
            if (this.D && this.t.shouldInterceptTouchEvent(motionEvent)) {
                int i = 1;
            } else {
                boolean z2 = false;
            }
            if (z || r3 != 0) {
                return true;
            }
            return false;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.E) {
            return true;
        }
        if (!this.i || this.o == 0) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.j != null) {
            this.t.processTouchEvent(motionEvent);
            b(motionEvent);
            return true;
        } else if (motionEvent.getPointerCount() > 1) {
            this.t.cancel();
            return super.onTouchEvent(motionEvent);
        } else {
            int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
            if (!(actionMasked == 2 || actionMasked == 1)) {
                a(motionEvent);
                b(motionEvent);
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            switch (actionMasked) {
                case mx.View_android_theme /*0*/:
                    this.F = null;
                    this.z = y;
                    this.A = x;
                    this.B = y;
                    return true;
                case WireMessage.WIRE_CHAT /*1*/:
                    if (a(x, y)) {
                        this.t.cancel();
                        motionEvent.setAction(3);
                        this.k.dispatchTouchEvent(motionEvent);
                        return true;
                    } else if (this.F == null && Math.abs(this.B - this.z) >= ((float) this.t.getTouchSlop())) {
                        return true;
                    } else {
                        a(motionEvent);
                        b(motionEvent);
                        return true;
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    float f = y - this.z;
                    this.z = y;
                    if (!this.D) {
                        a(motionEvent);
                        return true;
                    } else if (this.k.getTop() > getPaddingTop()) {
                        c(motionEvent);
                        return true;
                    } else if (a(motionEvent, (int) f, (int) x, (int) y)) {
                        return true;
                    } else {
                        c(motionEvent);
                        return true;
                    }
                case WireMessage.WIRE_AUTH /*3*/:
                    this.w.removeMessages(0);
                    return true;
                default:
                    return true;
            }
        }
    }

    private void a(MotionEvent motionEvent) {
        if (MotionEventCompat.getActionMasked(motionEvent) == 0) {
            this.C = ((float) this.k.getTop()) - motionEvent.getY();
        }
        motionEvent.offsetLocation(0.0f, this.C);
        this.t.processTouchEvent(motionEvent);
        motionEvent.offsetLocation(0.0f, -this.C);
    }

    private void b(MotionEvent motionEvent) {
        int scrollX = getScrollX() - this.k.getLeft();
        int scrollY = getScrollY() - this.k.getTop();
        motionEvent.offsetLocation((float) scrollX, (float) scrollY);
        this.k.dispatchTouchEvent(motionEvent);
        motionEvent.offsetLocation((float) (-scrollX), (float) (-scrollY));
    }

    private boolean a(MotionEvent motionEvent, int i, int i2, int i3) {
        if (this.F == null || !ViewCompat.canScrollVertically(this.F, -i)) {
            this.F = a(this.k, false, i, i2, i3);
        }
        if (this.F == null) {
            return false;
        }
        if (this.t.getActivePointerId() != -1) {
            motionEvent.setAction(0);
        }
        b(motionEvent);
        this.t.cancel();
        return true;
    }

    private void c(MotionEvent motionEvent) {
        if (this.t.getActivePointerId() == -1) {
            motionEvent.setAction(0);
        }
        a(motionEvent);
        this.G = MotionEvent.obtain(motionEvent);
        this.G.setAction(3);
        this.F = null;
    }

    private boolean a(float f, float f2) {
        float f3 = f - this.A;
        float f4 = f2 - this.B;
        boolean g = (this.o & 6) == 0 ? false : (!this.w.hasMessages(0) || this.o == 0 || (f3 * f3) + (f4 * f4) >= ((float) this.a) || this.t.isViewUnder(this.k, (int) f, (int) f2)) ? false : g();
        this.w.removeMessages(0);
        return g;
    }

    public static View a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    childAt = a(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop());
                    if (childAt != null) {
                        return childAt;
                    }
                }
            }
        }
        return (z && ViewCompat.canScrollVertically(view, -i)) ? view : null;
    }

    public void setPanelVisiblity(int i) {
        if (getChildCount() >= 2) {
            getChildAt(1).setVisibility(i);
            requestLayout();
        }
    }

    private boolean g() {
        int b = b(1.0f, this.o >> 1);
        if (b == this.o) {
            b = 0;
        }
        return c(b);
    }

    private boolean c(int i) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return c();
            case WireMessage.WIRE_CONTROL /*2*/:
                return b();
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return a();
            default:
                return d();
        }
    }

    public int getPanelState() {
        return this.o;
    }

    public boolean d() {
        if (this.k == null || this.o == 0) {
            return false;
        }
        this.o = 0;
        clearFocus();
        a(getBottom(), 0);
        return true;
    }

    public boolean c() {
        if (this.k == null || this.o == 1 || (this.p & 1) == 0) {
            return false;
        }
        this.o = 1;
        a(1.0f, 0);
        requestFocus();
        return true;
    }

    public boolean b() {
        if (this.k == null || this.o == 2 || (this.p & 2) == 0) {
            return false;
        }
        this.o = 2;
        a(0.0f, 0);
        requestFocus();
        return true;
    }

    public boolean a() {
        if (this.k == null || this.o == 4 || (this.p & 4) == 0) {
            return false;
        }
        this.o = 4;
        a(getTop(), 0);
        requestFocus();
        return true;
    }

    private void d(int i) {
        this.l = this.m != 0 ? ((float) (i - ((getMeasuredHeight() - getPaddingBottom()) - this.n))) / ((float) this.m) : 1.0f;
        a(this.k);
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        Object obj;
        boolean drawChild;
        float max;
        ab abVar = (ab) view.getLayoutParams();
        int save = canvas.save(2);
        if (!(!this.i || abVar.a || this.k == null)) {
            canvas.getClipBounds(this.v);
            if (this.r) {
                this.v.bottom = Math.min(this.v.bottom, this.k.getTop());
                canvas.clipRect(this.v);
            }
            if (this.l < 1.0f) {
                obj = 1;
                drawChild = super.drawChild(canvas, view, j);
                canvas.restoreToCount(save);
                if (obj != null) {
                    if (this.c != 0) {
                        max = 1.0f - Math.max(0.0f, this.l);
                    } else {
                        max = (float) getMeasuredHeight();
                        max = max == 0.0f ? 1.0f - Math.max(0.0f, ((float) this.k.getTop()) / max) : 1.0f;
                    }
                    this.e.setColor((((int) (max * ((float) ((this.d & ViewCompat.MEASURED_STATE_MASK) >>> 24)))) << 24) | (this.d & ViewCompat.MEASURED_SIZE_MASK));
                    canvas.drawRect(this.v, this.e);
                }
                return drawChild;
            }
        }
        obj = null;
        drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        if (obj != null) {
            if (this.c != 0) {
                max = (float) getMeasuredHeight();
                if (max == 0.0f) {
                }
            } else {
                max = 1.0f - Math.max(0.0f, this.l);
            }
            this.e.setColor((((int) (max * ((float) ((this.d & ViewCompat.MEASURED_STATE_MASK) >>> 24)))) << 24) | (this.d & ViewCompat.MEASURED_SIZE_MASK));
            canvas.drawRect(this.v, this.e);
        }
        return drawChild;
    }

    boolean a(float f, int i) {
        if (this.i) {
            a((int) (((float) ((getMeasuredHeight() - getPaddingBottom()) - this.n)) + (((float) this.m) * f)), i);
        }
        return false;
    }

    boolean a(int i, int i2) {
        if (!this.i || !this.t.smoothSlideViewTo(this.k, this.k.getLeft(), i)) {
            return false;
        }
        f();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    public void computeScroll() {
        if (!this.t.continueSettling(true)) {
            return;
        }
        if (this.i) {
            ViewCompat.postInvalidateOnAnimation(this);
        } else {
            this.t.abort();
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.k != null) {
            int right = this.k.getRight();
            int top = this.k.getTop() - this.h;
            int top2 = this.k.getTop();
            int left = this.k.getLeft();
            if (this.f != null) {
                this.f.setBounds(left, top, right, top2);
                this.f.draw(canvas);
            }
        }
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new ab();
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams ? new ab((MarginLayoutParams) layoutParams) : new ab(layoutParams);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof ab) && super.checkLayoutParams(layoutParams);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ab(getContext(), attributeSet);
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.o;
        savedState.b = this.p;
        savedState.c = this.i;
        return savedState;
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.o = savedState.a;
        this.p = savedState.b;
        this.i = savedState.c;
    }

    private int b(float f, int i) {
        int i2 = i;
        while (i2 > 0 && i2 < 4 && (this.p & i2) == 0) {
            if (f > 0.0f) {
                i2 >>= 1;
            } else {
                i2 <<= 1;
            }
        }
        if ((this.p & i2) != 0) {
            return i2;
        }
        return this.o;
    }
}
