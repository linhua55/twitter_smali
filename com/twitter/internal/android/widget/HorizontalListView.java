package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import bct;
import bdd;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public final class HorizontalListView extends AdapterView<ListAdapter> implements j {
    private int A;
    private int B;
    private t C;
    private v D;
    private int E;
    private DataSetObserver F;
    private int G;
    private int H;
    private Drawable I;
    private Rect J;
    private int K;
    private int L;
    private int M;
    private s N;
    private Drawable O;
    private int P;
    private Paint Q;
    private Runnable R;
    private w S;
    private boolean T;
    private int U;
    private int V;
    private VelocityTracker W;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    protected boolean b;
    protected ListAdapter c;
    protected int d;
    protected boolean e;
    protected int f;
    private final int g;
    private final x h;
    private final boolean[] i;
    private final int j;
    private final float k;
    private final int l;
    private final int m;
    private final int n;
    private final u o;
    private final Drawable p;
    private final Drawable q;
    private final Rect r;
    private final int s;
    private final int t;
    private Drawable u;
    private final y v;
    private final y w;
    private final y x;
    private int y;
    private int z;

    public /* synthetic */ LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return a(attributeSet);
    }

    public HorizontalListView(Context context) {
        this(context, null);
    }

    public HorizontalListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.horizontalListViewStyle);
    }

    public HorizontalListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = 0;
        this.h = new x(this);
        this.i = new boolean[1];
        this.o = new u(this);
        this.r = new Rect();
        this.v = new y(null);
        this.w = new y(null);
        this.x = new y(null);
        this.B = 0;
        this.E = -1;
        this.H = 0;
        this.K = RtlSpacingHelper.UNDEFINED;
        this.L = RtlSpacingHelper.UNDEFINED;
        this.U = RtlSpacingHelper.UNDEFINED;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.HorizontalListView, i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(bdd.HorizontalListView_listDivider);
        if (drawable != null) {
            setDivider(drawable);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.HorizontalListView_dividerWidth, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(bdd.HorizontalListView_edgePadding, 0);
        this.k = obtainStyledAttributes.getFloat(bdd.HorizontalListView_fillWidthHeightRatio, 0.0f);
        this.g = Math.max(obtainStyledAttributes.getDimensionPixelSize(bdd.HorizontalListView_scrollOffset, 10), dimensionPixelSize);
        this.u = obtainStyledAttributes.getDrawable(bdd.HorizontalListView_scrollDrawable);
        this.s = obtainStyledAttributes.getDimensionPixelSize(bdd.HorizontalListView_scrollHeight, 10);
        this.t = obtainStyledAttributes.getInt(bdd.HorizontalListView_fillMode, 0);
        setDividerWidth(dimensionPixelSize);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.l = viewConfiguration.getScaledTouchSlop();
        this.m = viewConfiguration.getScaledMinimumFlingVelocity();
        this.n = viewConfiguration.getScaledMaximumFlingVelocity();
        this.p = obtainStyledAttributes.getDrawable(bdd.HorizontalListView_leftFadeInDrawable);
        this.q = obtainStyledAttributes.getDrawable(bdd.HorizontalListView_rightFadeInDrawable);
        obtainStyledAttributes.recycle();
    }

    public ListAdapter getAdapter() {
        return this.c;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter != this.c) {
            if (this.F == null) {
                this.F = new r(this);
            }
            if (this.c != null) {
                this.c.unregisterDataSetObserver(this.F);
            }
            listAdapter.registerDataSetObserver(this.F);
            this.c = listAdapter;
            this.d = listAdapter.getCount();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h.b();
        if (this.N != null) {
            removeCallbacks(this.N);
        }
    }

    public View getSelectedView() {
        return null;
    }

    public void setSelection(int i) {
        a(i, false);
    }

    public void a(int i, boolean z) {
        if (i < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException("setSelection: " + i);
        } else if (this.z != i || z) {
            this.z = i;
            this.A = i;
            this.aa = true;
            requestLayout();
        }
    }

    public int getSelection() {
        return this.z;
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int suggestedMinimumWidth;
        int suggestedMinimumHeight;
        int i4 = 0;
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (this.c == null) {
            i3 = 0;
        } else {
            i3 = this.c.getCount();
        }
        this.d = i3;
        if (this.d <= 0 || !(mode == 0 || mode2 == 0)) {
            suggestedMinimumWidth = getSuggestedMinimumWidth();
            suggestedMinimumHeight = getSuggestedMinimumHeight();
            i3 = suggestedMinimumWidth;
        } else {
            View a = a(0, this.i);
            a(a, i2);
            suggestedMinimumWidth = a.getMeasuredWidth();
            i3 = a.getMeasuredHeight();
            this.h.a(a, -1, true);
            suggestedMinimumHeight = i3;
            i3 = suggestedMinimumWidth;
        }
        if (mode == 0) {
            size = (getPaddingLeft() + getPaddingRight()) + i3;
        } else if (mode == RtlSpacingHelper.UNDEFINED) {
            size = a(i2, 0, -1, size, -1);
        }
        if (mode2 == 0) {
            i3 = (getPaddingTop() + getPaddingBottom()) + suggestedMinimumHeight;
        } else {
            i3 = size2;
        }
        if (this.k > 0.0f && this.d > 0) {
            suggestedMinimumWidth = ((size - (this.j * 2)) - (this.P * this.d)) / this.d;
            if (suggestedMinimumWidth >= i3 && ((float) suggestedMinimumWidth) <= this.k * ((float) i3)) {
                while (i4 < getChildCount()) {
                    getChildAt(i4).getLayoutParams().width = suggestedMinimumWidth;
                    i4++;
                }
            }
            i4 = suggestedMinimumWidth;
        }
        if (this.C != null) {
            this.C.a(i4);
        }
        setMeasuredDimension(size, i3);
        this.G = i2;
    }

    private void a(View view, int i, LayoutParams layoutParams) {
        int i2;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingTop() + getPaddingBottom(), layoutParams.height);
        if (this.b) {
            i2 = layoutParams.c;
        } else {
            i2 = layoutParams.width;
        }
        if (i2 > 0) {
            i2 = MeasureSpec.makeMeasureSpec(i2, 1073741824);
        } else {
            i2 = MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(i2, childMeasureSpec);
    }

    private void a(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (LayoutParams) generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        a(view, i, layoutParams);
    }

    int a(int i, int i2, int i3, int i4, int i5) {
        ListAdapter listAdapter = this.c;
        if (listAdapter == null) {
            return getPaddingLeft() + getPaddingRight();
        }
        int paddingLeft = (getPaddingLeft() + getPaddingRight()) + (this.j * 2);
        if (i3 == -1) {
            i3 = listAdapter.getCount() - 1;
        }
        x xVar = this.h;
        boolean[] zArr = this.i;
        boolean z = false;
        while (i2 <= i3) {
            View a = a(i2, zArr);
            a(a, i);
            xVar.a(a, -1, false);
            boolean measuredWidth = paddingLeft + (a.getMeasuredWidth() + this.P);
            if (measuredWidth < i4) {
                if (i5 >= 0 && i2 >= i5) {
                    z = measuredWidth;
                }
                i2++;
            } else if (i5 < 0 || i2 <= i5 || z > false || measuredWidth == i4) {
                return i4;
            } else {
                return z;
            }
        }
        return paddingLeft;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!this.ab) {
            this.ad = false;
            this.ab = true;
            boolean z2 = this.e;
            boolean z3 = this.aa;
            if (z || z2) {
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    getChildAt(i5).forceLayout();
                }
            }
            c();
            if (z || z3) {
                e();
            }
            if (this.t != 0 && (!this.b || z || z2)) {
                d();
            }
            this.ab = false;
        }
    }

    private void a() {
        this.W.recycle();
        this.W = null;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.d == 0 || motionEvent.getPointerCount() > 1) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.W == null) {
            this.W = VelocityTracker.obtain();
        }
        this.W.addMovement(motionEvent);
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int a;
        int i;
        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
            case mx.View_android_theme /*0*/:
                a = a(x, y);
                if (!this.e && this.E != 4 && a >= 0 && this.c.isEnabled(a)) {
                    this.E = 0;
                    if (this.N == null) {
                        this.N = new s(this);
                    }
                    postDelayed(this.N, (long) ViewConfiguration.getTapTimeout());
                }
                a(true);
                this.o.a();
                this.K = x;
                this.L = y;
                this.U = RtlSpacingHelper.UNDEFINED;
                this.M = a;
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                switch (this.E) {
                    case mx.View_android_theme /*0*/:
                    case WireMessage.WIRE_CHAT /*1*/:
                    case WireMessage.WIRE_CONTROL /*2*/:
                        i = this.M;
                        a = a(x, y);
                        View childAt = getChildAt(i - this.H);
                        boolean z = x > getPaddingLeft() && x < getWidth() - getPaddingRight() && a == i;
                        if (!(childAt == null || childAt.hasFocusable() || !z)) {
                            if (this.E != 0) {
                                childAt.setPressed(false);
                            }
                            if (this.S == null) {
                                this.S = new w(this);
                            }
                            w wVar = this.S;
                            wVar.a = i;
                            wVar.a();
                            if (this.E == 0 || this.E == 1) {
                                Handler handler = getHandler();
                                if (handler != null) {
                                    handler.removeCallbacks(this.N);
                                }
                                if (this.e || !this.c.isEnabled(i)) {
                                    this.E = -1;
                                } else {
                                    this.E = 1;
                                    c();
                                    childAt.setPressed(true);
                                    setPressed(true);
                                    if (this.I != null) {
                                        Drawable current = this.I.getCurrent();
                                        if (current != null && (current instanceof TransitionDrawable)) {
                                            ((TransitionDrawable) current).resetTransition();
                                        }
                                    }
                                    if (this.R != null) {
                                        removeCallbacks(this.R);
                                    }
                                    this.R = new q(this, childAt, wVar);
                                    postDelayed(this.R, (long) ViewConfiguration.getPressedStateDuration());
                                }
                                return true;
                            } else if (!this.e && this.c.isEnabled(i)) {
                                wVar.run();
                            }
                        }
                        this.E = -1;
                        break;
                    default:
                        VelocityTracker velocityTracker = this.W;
                        velocityTracker.computeCurrentVelocity(1000, (float) this.n);
                        float xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > ((float) this.m)) {
                            this.o.a((int) (-xVelocity));
                            break;
                        }
                        break;
                }
                a();
                b();
                this.L = RtlSpacingHelper.UNDEFINED;
                this.K = RtlSpacingHelper.UNDEFINED;
                this.U = RtlSpacingHelper.UNDEFINED;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.K != RtlSpacingHelper.UNDEFINED) {
                    a = getChildCount();
                    if (a == 0) {
                        this.E = -1;
                        return super.onTouchEvent(motionEvent);
                    }
                    i = x - this.K;
                    if (this.E != 3) {
                        if ((this.H == 0 && getOverflowLeft() + this.j == 0 && i > 0) || (this.H == this.f && getOverflowRight() + this.j == 0 && i < 0)) {
                            a(false);
                            break;
                        }
                        if (this.L != RtlSpacingHelper.UNDEFINED) {
                            if (this.l <= Math.abs(y - this.L)) {
                                a(false);
                                break;
                            }
                        }
                        if (this.l <= Math.abs(i) && !(a == this.d && getOverflowLeft() + this.j == 0 && getOverflowRight() + this.j == 0)) {
                            this.E = 3;
                        }
                    }
                    if (x != this.U) {
                        if (i > 0) {
                            a = i - this.l;
                        } else {
                            a = this.l + i;
                        }
                        if (this.U != RtlSpacingHelper.UNDEFINED) {
                            a = x - this.U;
                        }
                        b(i, a);
                        this.U = x;
                        e();
                    }
                }
                this.K = x;
                this.L = y;
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                b();
                a();
                this.K = RtlSpacingHelper.UNDEFINED;
                this.L = RtlSpacingHelper.UNDEFINED;
                this.U = RtlSpacingHelper.UNDEFINED;
                this.E = -1;
                break;
        }
        return true;
    }

    private void b() {
        setPressed(false);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setPressed(false);
        }
    }

    private void a(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean c(int i) {
        return b(i, i);
    }

    private boolean b(int i, int i2) {
        boolean z = true;
        int i3 = 0;
        if (!(i == 0 && i2 == 0)) {
            int overflowRight;
            int childCount = getChildCount();
            boolean z2 = i2 < 0;
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int right = getChildAt(childCount - 1).getRight();
            int left = getChildAt(0).getLeft();
            int i4 = this.H;
            if (z2) {
                if (i4 + childCount < this.d) {
                    overflowRight = getOverflowRight() + this.P;
                } else {
                    overflowRight = getOverflowRight() + this.j;
                }
            } else if (i4 > 0) {
                overflowRight = getOverflowLeft() + this.P;
            } else {
                overflowRight = getOverflowLeft() + this.j;
            }
            if (z2) {
                if (i4 + childCount >= this.d && right + i < width - this.j) {
                    z = false;
                }
            } else if (i4 <= 0 && left + i > this.j + paddingLeft) {
                z = false;
            }
            if (z) {
                int i5;
                if (!z2) {
                    right = 0;
                    i5 = 0;
                    for (left = childCount - 1; left >= 0; left--) {
                        View childAt = getChildAt(left);
                        if (childAt.getLeft() + i <= width) {
                            break;
                        }
                        right = i5 + 1;
                        this.h.a(childAt, i4 + left, false);
                        i5 = right;
                        right = left;
                    }
                } else {
                    right = 0;
                    i5 = 0;
                    while (right < childCount) {
                        View childAt2 = getChildAt(right);
                        if (childAt2.getRight() + i >= paddingLeft) {
                            break;
                        }
                        left = i5 + 1;
                        this.h.a(childAt2, i4 + right, false);
                        right++;
                        i5 = left;
                    }
                    right = 0;
                }
                if (i5 > 0) {
                    detachViewsFromParent(right, i5);
                    if (z2) {
                        this.H = i5 + this.H;
                    }
                }
                i5 = getChildCount();
                while (i3 < i5) {
                    getChildAt(i3).offsetLeftAndRight(i);
                    i3++;
                }
                invalidate();
                if (overflowRight < Math.abs(i2)) {
                    b(z2);
                }
                int i6 = this.V;
                this.V -= i;
                if (this.D != null) {
                    this.D.a(this, this.V, i6);
                }
            }
        }
        return z;
    }

    private int getOverflowRight() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getChildAt(getChildCount() - 1).getRight() - (getWidth() - getPaddingRight());
    }

    private int getOverflowLeft() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPaddingLeft() - getChildAt(0).getLeft();
    }

    private void b(boolean z) {
        int i = 0;
        int childCount = getChildCount();
        if (z) {
            if (childCount <= 0) {
                i = getPaddingLeft();
            } else if (this.H + childCount < this.d) {
                i = getChildAt(childCount - 1).getRight() + this.P;
            } else {
                i = getChildAt(childCount - 1).getRight() + this.j;
            }
            d(childCount + this.H, i);
            return;
        }
        if (childCount > 0) {
            if (this.H == 0) {
                i = getChildAt(0).getLeft() - this.j;
            } else {
                i = getChildAt(0).getLeft() - this.P;
            }
        }
        c(this.H - 1, i);
    }

    private void c(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int i3 = 0;
        while (i2 > paddingLeft && i >= 0) {
            i2 = a(i, i2, paddingTop, false).getLeft() - this.P;
            i--;
            i3++;
        }
        this.H -= i3;
    }

    private void d(int i, int i2) {
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        while (i2 < width && i < this.d) {
            i2 = a(i, i2, paddingTop, true).getRight() + this.P;
            i++;
        }
    }

    private void d(int i) {
        int i2 = 1;
        int i3 = 0;
        int paddingLeft = getPaddingLeft() + this.j;
        if (i == 0) {
            d(0, paddingLeft);
        } else {
            int i4 = i - 1;
            d(i4, getPaddingLeft());
            int childCount = getChildCount();
            View childAt;
            if (i4 + childCount == this.d) {
                int i5;
                int measuredWidth = ((getMeasuredWidth() - getPaddingRight()) - this.j) - getChildAt(childCount - 1).getRight();
                for (i5 = 0; i5 < childCount; i5++) {
                    getChildAt(i5).offsetLeftAndRight(measuredWidth);
                }
                c(i4 - 1, getChildAt(0).getLeft());
                i4 = getChildCount();
                if (i4 == this.d) {
                    i5 = getChildAt(0).getLeft();
                    if (i5 > paddingLeft) {
                        i5 = paddingLeft - i5;
                        for (i2 = 0; i2 < i4; i2++) {
                            getChildAt(i2).offsetLeftAndRight(i5);
                        }
                        i2 = 0;
                    }
                } else {
                    i3 = this.d - i4;
                }
                if (i2 != 0) {
                    childAt = getChildAt(i3 - i);
                    if (childAt != null) {
                        i4 = this.P + this.g;
                        i2 = childAt.getLeft();
                        if (i2 < i4) {
                            c(i4 - i2);
                        }
                    }
                }
            } else {
                childAt = getChildAt(1);
                if (childAt != null) {
                    i3 = this.P + this.g;
                    i2 = childAt.getLeft();
                    if (i2 > i3) {
                        c(i3 - i2);
                    }
                }
                i3 = i4;
            }
        }
        this.H = i3;
    }

    private View a(int i, int i2, int i3, boolean z) {
        View a;
        if (!this.e) {
            a = this.h.a(i);
            if (a != null) {
                a(i, a, i2, i3, z, true);
                return a;
            }
        }
        a = a(i, this.i);
        a(i, a, i2, i3, z, this.i[0]);
        return a;
    }

    private View a(int i, boolean[] zArr) {
        View view;
        boolean z;
        View b = this.h.b(i);
        if (b != null) {
            view = this.c.getView(i, b, this);
            if (view != b) {
                this.h.a(b, i, false);
                z = false;
            } else {
                z = true;
            }
        } else {
            view = this.c.getView(i, null, this);
            z = false;
        }
        zArr[0] = z;
        return view;
    }

    private void a(int i, View view, int i2, int i3, boolean z, boolean z2) {
        boolean z3;
        int i4 = -1;
        boolean z4 = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (LayoutParams) generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = layoutParams;
        if (!z2 || layoutParams2.d) {
            layoutParams2.d = false;
            if (!z) {
                i4 = 0;
            }
            addViewInLayout(view, i4, layoutParams2, true);
        } else {
            attachViewToParent(view, z ? -1 : 0, layoutParams2);
        }
        if (!z2 || view.isLayoutRequested()) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z3) {
            a(view, this.G, layoutParams2);
        } else {
            cleanupLayoutState(view);
        }
        i4 = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (!z) {
            i2 -= i4;
        }
        if (z3) {
            view.layout(i2, i3, i2 + i4, i3 + measuredHeight);
        } else {
            view.offsetLeftAndRight(i2 - view.getLeft());
            view.offsetTopAndBottom(i3 - view.getTop());
        }
        if (i == this.A) {
            z4 = true;
        }
        if (z4 != view.isSelected()) {
            view.setSelected(z4);
        }
    }

    private void c() {
        invalidate();
        boolean z = this.e;
        boolean z2 = this.aa;
        int i = this.H;
        x xVar = this.h;
        int childCount = getChildCount();
        View childAt = getChildAt(0);
        if (z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                xVar.a(getChildAt(i2), i + i2, false);
            }
        } else {
            xVar.a(i, childCount);
        }
        detachAllViewsFromParent();
        if (childAt == null || z2) {
            d(this.z);
        } else {
            d(i, childAt.getLeft());
        }
        xVar.a();
        this.aa = false;
        this.e = false;
        this.f = (this.H + getChildCount()) - 1;
    }

    private void d() {
        int childCount = getChildCount();
        int i = this.d;
        if (childCount == i && i > 0) {
            int i2;
            int measuredWidth = getMeasuredWidth();
            int i3 = (i - 1) * this.P;
            int paddingLeft = ((getPaddingLeft() + getPaddingRight()) + (this.j * 2)) + i3;
            int i4 = paddingLeft;
            for (i2 = 0; i2 < childCount; i2++) {
                i4 += getChildAt(i2).getMeasuredWidth();
            }
            if (measuredWidth > i4) {
                paddingLeft = (measuredWidth - paddingLeft) / i;
                measuredWidth = (measuredWidth - (i4 - i3)) / i;
                i4 = 0;
                i = getPaddingLeft() + this.j;
                while (i4 < childCount) {
                    View childAt = getChildAt(i4);
                    if (this.t == 1) {
                        i2 = paddingLeft;
                    } else {
                        i2 = childAt.getMeasuredWidth() + measuredWidth;
                    }
                    ((LayoutParams) childAt.getLayoutParams()).c = i2;
                    int i5 = i + i2;
                    childAt.measure(MeasureSpec.makeMeasureSpec(i2, 1073741824), this.G);
                    childAt.layout(i, childAt.getTop(), i5, childAt.getBottom());
                    i5 = i + i2;
                    if (i4 < childCount - 1) {
                        i5 += this.P;
                    }
                    i4++;
                    i = i5;
                }
                e();
            }
        }
        this.b = true;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -1);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public LayoutParams a(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int a(int i, int i2) {
        Rect rect = this.J;
        if (rect == null) {
            this.J = new Rect();
            rect = this.J;
        }
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (childAt.getVisibility() == 0) {
                childAt.getHitRect(rect);
                if (rect.contains(i, i2)) {
                    return this.H + childCount;
                }
            }
        }
        return -1;
    }

    public void setPressed(boolean z) {
        if (getParent() == null) {
            super.setPressed(z);
        }
    }

    public void setScrollDrawable(Drawable drawable) {
        this.u = drawable;
        invalidate();
    }

    protected void dispatchDraw(Canvas canvas) {
        int i = 0;
        int i2 = this.P;
        int i3 = (i2 <= 0 || this.O == null) ? 0 : 1;
        if (i3 != 0) {
            int paddingLeft;
            int paddingRight;
            Rect rect = new Rect();
            rect.left = getPaddingLeft();
            rect.right = getWidth() - getPaddingRight();
            int childCount = getChildCount();
            int i4 = this.H;
            ListAdapter listAdapter = this.c;
            int scrollX = getScrollX();
            int i5 = (!isOpaque() || super.isOpaque()) ? 0 : 1;
            if (i5 != 0 && this.Q == null) {
                this.Q = new Paint();
            }
            Paint paint = this.Q;
            if (this.T) {
                paddingLeft = getPaddingLeft();
                paddingRight = getPaddingRight();
            } else {
                paddingRight = 0;
                paddingLeft = 0;
            }
            paddingRight = (getWidth() + scrollX) - paddingRight;
            while (i < childCount) {
                int left = getChildAt(i).getLeft();
                if (left > paddingLeft) {
                    if (listAdapter.isEnabled(i4 + i) && (i == childCount - 1 || listAdapter.isEnabled((i4 + i) + 1))) {
                        rect.left = left - i2;
                        rect.right = left;
                        a(canvas, rect);
                    } else if (i5 != 0) {
                        rect.left = left - i2;
                        rect.right = left;
                        canvas.drawRect(rect, paint);
                    }
                }
                i++;
            }
            if (childCount > 0 && scrollX > 0 && i3 != 0) {
                rect.left = paddingRight;
                rect.right = paddingRight + i2;
                a(canvas, rect);
            }
        }
        super.dispatchDraw(canvas);
        if (this.u != null) {
            this.u.draw(canvas);
        }
        if (this.p != null) {
            a(canvas, this.p, 3);
        }
        if (this.q != null) {
            a(canvas, this.q, 5);
        }
    }

    private void a(Canvas canvas, Drawable drawable, int i) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (i == 3 && this.H == 0) {
            intrinsicWidth = Math.min(intrinsicWidth, getOverflowLeft());
        } else if (i == 5 && this.H + getChildCount() == this.d) {
            intrinsicWidth = Math.min(intrinsicWidth, getOverflowRight());
        }
        if (intrinsicWidth > 0) {
            Rect rect = new Rect();
            rect.top = getPaddingTop();
            rect.bottom = getHeight() - getPaddingBottom();
            if (i == 3) {
                rect.left = getPaddingLeft();
                rect.right = intrinsicWidth + rect.left;
            } else if (i == 5) {
                rect.right = getWidth() - getPaddingRight();
                rect.left = rect.right - intrinsicWidth;
            }
            drawable.setBounds(rect);
            drawable.draw(canvas);
        }
    }

    void a(Canvas canvas, Rect rect) {
        Drawable drawable = this.O;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    public void setDivider(Drawable drawable) {
        if (drawable != null) {
            this.P = drawable.getIntrinsicWidth();
        } else {
            this.P = 0;
        }
        this.O = drawable;
        requestLayout();
        invalidate();
    }

    public void requestLayout() {
        this.ad = true;
        super.requestLayout();
    }

    public void setDividerWidth(int i) {
        if (i != this.P) {
            this.P = i;
            requestLayout();
            invalidate();
        }
    }

    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.T = z;
    }

    public void setChildWidthListener(t tVar) {
        this.C = tVar;
    }

    public void a(int i, float f) {
        Object obj = 1;
        Object obj2 = null;
        if (f != 0.0f) {
            int i2 = i + 1;
            int i3 = i - this.H;
            int childCount = getChildCount();
            if (i3 >= 0 && i3 < childCount) {
                View childAt = getChildAt(i3);
                Object obj3 = (this.B != 2 || i == this.A || i2 == this.A) ? null : 1;
                if (this.z > i) {
                    int paddingLeft;
                    e(i);
                    if (this.H == 0) {
                        obj2 = 1;
                    }
                    if (obj2 == null || i != 0) {
                        paddingLeft = (getPaddingLeft() + this.P) + this.g;
                    } else {
                        paddingLeft = getPaddingLeft() + this.j;
                    }
                    i2 = paddingLeft - childAt.getLeft();
                    if (i2 <= 0) {
                        paddingLeft = childAt.getLeft() - this.P;
                    } else if (obj2 == null || i != 0) {
                        paddingLeft = getPaddingLeft() + this.g;
                    } else {
                        paddingLeft = getPaddingLeft() + this.j;
                    }
                    float f2 = 1.0f - f;
                    if (obj3 == null && i2 > 0) {
                        c(this.v.a(i2, f2));
                    }
                    a(paddingLeft, (childAt.getWidth() + paddingLeft) + this.P, f2);
                } else if (f > 0.0f) {
                    e(i2);
                    i2 -= this.H;
                    if (i2 >= 0 && i2 < childCount) {
                        int left;
                        View childAt2 = getChildAt(i2);
                        if (this.H + childCount != this.d) {
                            obj = null;
                        }
                        int width = (getWidth() - getPaddingRight()) - this.j;
                        View childAt3 = getChildAt(childCount - 1);
                        int paddingLeft2 = (getPaddingLeft() + this.P) + this.g;
                        if (obj != null) {
                            i2 = Math.max(paddingLeft2 - childAt2.getLeft(), width - childAt3.getRight());
                        } else {
                            i2 = paddingLeft2 - childAt2.getLeft();
                        }
                        if (i2 >= 0) {
                            left = childAt2.getLeft() - this.P;
                        } else if (obj != null) {
                            left = (childAt2.getLeft() + i2) - this.P;
                        } else {
                            left = getPaddingLeft() + this.g;
                        }
                        int width2 = (childAt2.getWidth() + left) + this.P;
                        if (obj3 == null && i2 < 0 && (obj == null || childAt.getLeft() <= paddingLeft2 || childAt3.getRight() > width)) {
                            c(this.v.a(i2, f));
                        }
                        a(left, width2, f);
                    }
                }
            }
        }
    }

    private void e(int i) {
        if (this.y != i) {
            f();
            this.y = i;
        }
    }

    private void a(int i, int i2, float f) {
        if (this.u != null) {
            Rect rect = this.r;
            int i3 = i2 - rect.right;
            int a = this.w.a(i - rect.left, f);
            i3 = this.x.a(i3, f);
            rect.left += a;
            rect.right += i3;
            this.u.setBounds(rect);
            if (a != 0 || i3 != 0) {
                invalidate(0, rect.top, getRight(), rect.bottom);
            }
        }
    }

    private void e() {
        if (this.u != null) {
            int i = this.z - this.H;
            Rect rect = this.r;
            View childAt = getChildAt(i);
            int height = getHeight();
            if (childAt != null) {
                if (this.z == 0) {
                    i = getPaddingLeft() + this.j;
                } else {
                    i = childAt.getLeft() - this.P;
                }
                rect.set(i, height - this.s, childAt.getRight() + this.P, height);
            } else {
                i = getWidth();
                if (this.z < this.H) {
                    rect.left = -rect.right;
                    rect.right = 0;
                } else {
                    rect.right += i;
                    rect.left = i;
                }
            }
            if (!rect.equals(this.u.getBounds())) {
                this.u.setBounds(rect);
                invalidate(0, rect.top, getWidth(), rect.bottom);
            }
        }
    }

    public void a(int i) {
        if (i != 0) {
            this.ab = true;
        } else {
            boolean z = this.ab;
            this.ab = false;
            if (z && this.ad) {
                requestLayout();
            }
            if (i == 0 && this.B != 0) {
                g();
            }
        }
        this.B = i;
    }

    public void b(int i) {
        if (this.B == 0) {
            setSelection(i);
            return;
        }
        int i2 = this.A;
        this.A = i;
        e(i2, i);
    }

    private void f() {
        this.v.a();
        this.w.a();
        this.x.a();
    }

    private void e(int i, int i2) {
        b(i, false);
        b(i2, true);
        invalidate();
    }

    private void b(int i, boolean z) {
        int i2 = i - this.H;
        if (i2 >= 0 && i2 < getChildCount()) {
            getChildAt(i2).setSelected(z);
        }
    }

    private void g() {
        f();
        this.z = this.A;
        e();
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(a.length + i);
        if (this.ac) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.u != null && this.u.isStateful()) {
            this.u.setState(getDrawableState());
        }
    }

    public void setDocked(boolean z) {
        if (this.ac != z) {
            this.ac = z;
            refreshDrawableState();
            invalidate();
        }
    }

    private void h() {
        if (this.D != null) {
            this.D.a(this, this.E == 4);
        }
    }

    public void setOnScrollListener(v vVar) {
        this.D = vVar;
    }

    public int getTotalOffset() {
        return this.V;
    }
}
