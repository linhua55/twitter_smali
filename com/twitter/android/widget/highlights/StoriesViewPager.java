package com.twitter.android.widget.highlights;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.DrawableRes;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.AutoScrollHelper;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.twitter.android.highlights.aj;
import com.twitter.android.mx;
import defpackage.cfb;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class StoriesViewPager extends ViewGroup {
    private static final int[] a;
    private static final o b;
    private static final Comparator<h> c;
    private static final Interpolator d;
    private boolean A;
    private int B;
    private boolean C;
    private boolean D;
    private int E;
    private int F;
    private int G;
    private float H;
    private float I;
    private float J;
    private float K;
    private int L;
    private VelocityTracker M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private boolean R;
    private long S;
    private WeakReference<g> T;
    private boolean U;
    private boolean V;
    private boolean W;
    private int aa;
    private k ab;
    private k ac;
    private j ad;
    private l ae;
    private Method af;
    private int ag;
    private ArrayList<View> ah;
    private final Runnable ai;
    private int aj;
    private float ak;
    private int e;
    private float f;
    private final ArrayList<h> g;
    private final h h;
    private final Rect i;
    private aj j;
    private int k;
    private int l;
    private Parcelable m;
    private ClassLoader n;
    private Scroller o;
    private m p;
    private int q;
    private Drawable r;
    private int s;
    private int t;
    private float u;
    private float v;
    private int w;
    private int x;
    private boolean y;
    private boolean z;

    static {
        a = new int[]{16842931};
        b = new o();
        c = new c();
        d = new d();
    }

    public StoriesViewPager(Context context) {
        super(context);
        this.g = new ArrayList();
        this.h = new h();
        this.i = new Rect();
        this.l = -1;
        this.m = null;
        this.n = null;
        this.u = -3.4028235E38f;
        this.v = AutoScrollHelper.NO_MAX;
        this.B = 1;
        this.L = -1;
        this.U = true;
        this.V = false;
        this.ai = new e(this);
        this.aj = 0;
        this.ak = 1.0f;
        a(context, null);
    }

    public StoriesViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new ArrayList();
        this.h = new h();
        this.i = new Rect();
        this.l = -1;
        this.m = null;
        this.n = null;
        this.u = -3.4028235E38f;
        this.v = AutoScrollHelper.NO_MAX;
        this.B = 1;
        this.L = -1;
        this.U = true;
        this.V = false;
        this.ai = new e(this);
        this.aj = 0;
        this.ak = 1.0f;
        a(context, attributeSet);
    }

    void a(Context context, AttributeSet attributeSet) {
        setWillNotDraw(false);
        setDescendantFocusability(AccessibilityNodeInfoCompat.ACTION_EXPAND);
        setFocusable(true);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.StoriesViewPager);
            this.ak = obtainStyledAttributes.getFloat(0, 1.0f);
            if (this.ak == 0.0f) {
                throw new IllegalArgumentException("Edge pull elasticity factor must be nonzero.");
            }
            obtainStyledAttributes.recycle();
        }
        this.o = new Scroller(context, d);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.G = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.N = (int) (400.0f * f);
        this.O = viewConfiguration.getScaledMaximumFlingVelocity();
        this.P = (int) (25.0f * f);
        this.Q = (int) (2.0f * f);
        this.E = (int) (16.0f * f);
        ViewCompat.setAccessibilityDelegate(this, new i(this));
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    public void setEdgeListener(g gVar) {
        this.T = new WeakReference(gVar);
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.ai);
        super.onDetachedFromWindow();
    }

    void setScrollState(int i) {
        if (this.aj != i) {
            this.aj = i;
            b(i != 0);
            if (this.ab != null) {
                this.ab.b(i);
            }
        }
    }

    public void setAdapter(aj ajVar) {
        if (this.j != null) {
            this.j.unregisterDataSetObserver(this.p);
            this.j.startUpdate((ViewGroup) this);
            for (int i = 0; i < this.g.size(); i++) {
                h hVar = (h) this.g.get(i);
                this.j.destroyItem(this, hVar.b, hVar.a);
            }
            this.j.finishUpdate((ViewGroup) this);
            this.g.clear();
            j();
            this.k = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter = this.j;
        this.j = ajVar;
        this.e = 0;
        if (this.j != null) {
            if (this.p == null) {
                this.p = new m(this, null);
            }
            this.j.registerDataSetObserver(this.p);
            this.A = false;
            boolean z = this.U;
            this.U = true;
            this.e = this.j.getCount();
            if (this.l >= 0) {
                this.j.restoreState(this.m, this.n);
                a(this.l, false, true);
                this.l = -1;
                this.m = null;
                this.n = null;
            } else if (z) {
                requestLayout();
            } else {
                b();
            }
        }
        if (this.ad != null && pagerAdapter != ajVar) {
            this.ad.a(pagerAdapter, ajVar);
        }
    }

    private void j() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).a) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    public View a(View view) {
        ViewParent parent = view.getParent();
        if (!(parent instanceof View)) {
            return null;
        }
        View view2 = (View) parent;
        return view2 != this ? a(view2) : view;
    }

    public PagerAdapter getAdapter() {
        return this.j;
    }

    void setOnAdapterChangeListener(j jVar) {
        this.ad = jVar;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public void setCurrentItem(int i) {
        boolean z;
        this.A = false;
        if (this.U) {
            z = false;
        } else {
            z = true;
        }
        a(i, z, false);
    }

    public void a(int i, boolean z) {
        this.A = false;
        a(i, z, false);
    }

    public int getCurrentItem() {
        return this.k;
    }

    void a(int i, boolean z, boolean z2) {
        a(i, z, z2, 0);
    }

    void a(int i, boolean z, boolean z2, int i2) {
        boolean z3 = false;
        if (this.j == null || this.j.getCount() <= 0) {
            setScrollingCacheEnabled(false);
        } else if (z2 || this.k != i || this.g.size() == 0) {
            if (i < 0) {
                i = 0;
            } else if (i >= this.j.getCount()) {
                i = this.j.getCount() - 1;
            }
            int i3 = this.B;
            if (i > this.k + i3 || i < this.k - i3) {
                for (int i4 = 0; i4 < this.g.size(); i4++) {
                    ((h) this.g.get(i4)).c = true;
                }
            }
            if (this.k != i) {
                z3 = true;
            }
            if (this.U) {
                this.k = i;
                if (z3 && this.ab != null) {
                    this.ab.a(i);
                }
                if (z3 && this.ac != null) {
                    this.ac.a(i);
                }
                requestLayout();
                return;
            }
            a(i);
            a(i, z, i2, z3);
        } else {
            setScrollingCacheEnabled(false);
        }
    }

    private void a(int i, boolean z, int i2, boolean z2) {
        int max;
        h b = b(i);
        if (b != null) {
            max = (int) (Math.max(this.u, Math.min(b.e, this.v)) * ((float) getClientWidth()));
        } else {
            max = 0;
        }
        if (z) {
            a(max, 0, i2);
            if (z2 && this.ab != null) {
                this.ab.a(i);
            }
            if (z2 && this.ac != null) {
                this.ac.a(i);
                return;
            }
            return;
        }
        if (z2 && this.ab != null) {
            this.ab.a(i);
        }
        if (z2 && this.ac != null) {
            this.ac.a(i);
        }
        a(false);
        scrollTo(max, 0);
        d(max);
    }

    public void setOnPageChangeListener(k kVar) {
        this.ab = kVar;
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (VERSION.SDK_INT >= 7) {
            if (this.af == null) {
                try {
                    this.af = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
                } catch (Throwable e) {
                    cfb.c("ElasticViewPager", "Can't find setChildrenDrawingOrderEnabled", e);
                }
            }
            try {
                this.af.invoke(this, new Object[]{Boolean.valueOf(z)});
            } catch (Throwable e2) {
                cfb.c("ElasticViewPager", "Error changing children drawing order", e2);
            }
        }
    }

    protected int getChildDrawingOrder(int i, int i2) {
        if (this.ag == 2) {
            i2 = (i - 1) - i2;
        }
        return ((LayoutParams) ((View) this.ah.get(i2)).getLayoutParams()).f;
    }

    public int getOffscreenPageLimit() {
        return this.B;
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            cfb.d("ElasticViewPager", "Requested offscreen page limit " + i + " too small; defaulting to " + 1);
            i = 1;
        }
        if (i != this.B) {
            this.B = i;
            b();
        }
    }

    public void setPageMargin(int i) {
        int i2 = this.q;
        this.q = i;
        int width = getWidth();
        a(width, width, i, i2);
        requestLayout();
    }

    public int getPageMargin() {
        return this.q;
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.r = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.r;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    float a(float f) {
        return (float) Math.sin((double) ((float) (((double) (f - 0.5f)) * 0.4712389167638204d)));
    }

    void a(int i, int i2, int i3) {
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            a(false);
            b();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float a = (((float) i6) * a(Math.min(1.0f, (((float) Math.abs(i4)) * 1.0f) / ((float) clientWidth)))) + ((float) i6);
        int abs = Math.abs(i3);
        if (abs > 0) {
            clientWidth = Math.round(1000.0f * Math.abs(a / ((float) abs))) * 4;
        } else {
            clientWidth = (int) (((((float) Math.abs(i4)) / ((((float) clientWidth) * this.j.getPageWidth(this.k)) + ((float) this.q))) + 1.0f) * 600.0f);
        }
        this.o.startScroll(scrollX, scrollY, i4, i5, Math.min(clientWidth, 1000));
        ViewCompat.postInvalidateOnAnimation(this);
    }

    h a(int i, int i2) {
        h hVar = new h();
        hVar.b = i;
        hVar.a = this.j.instantiateItem(this, i);
        hVar.d = this.j.getPageWidth(i);
        if (i2 < 0 || i2 >= this.g.size()) {
            this.g.add(hVar);
        } else {
            this.g.add(i2, hVar);
        }
        return hVar;
    }

    void a() {
        int i;
        int count = this.j.getCount();
        this.e = count;
        boolean z = this.g.size() < (this.B * 2) + 1 && this.g.size() < count;
        boolean z2 = false;
        int i2 = this.k;
        boolean z3 = z;
        int i3 = 0;
        while (i3 < this.g.size()) {
            int i4;
            boolean z4;
            boolean z5;
            h hVar = (h) this.g.get(i3);
            int itemPosition = this.j.getItemPosition(hVar.a);
            if (itemPosition == -1) {
                this.j.a(hVar.a, hVar.b);
                i4 = i3;
                z4 = z2;
                i = i2;
                z5 = z3;
            } else if (itemPosition == -2) {
                this.g.remove(i3);
                i3--;
                if (!z2) {
                    this.j.startUpdate((ViewGroup) this);
                    z2 = true;
                }
                this.j.destroyItem(this, hVar.b, hVar.a);
                if (this.k == hVar.b) {
                    i4 = i3;
                    z4 = z2;
                    i = Math.max(0, Math.min(this.k, count - 1));
                    z5 = true;
                } else {
                    i4 = i3;
                    z4 = z2;
                    i = i2;
                    z5 = true;
                }
            } else if (hVar.b != itemPosition) {
                if (hVar.b == this.k) {
                    i2 = itemPosition;
                }
                hVar.b = itemPosition;
                this.j.a(hVar.a, hVar.b);
                i4 = i3;
                z4 = z2;
                i = i2;
                z5 = true;
            } else {
                i4 = i3;
                z4 = z2;
                i = i2;
                z5 = z3;
            }
            z3 = z5;
            i2 = i;
            z2 = z4;
            i3 = i4 + 1;
        }
        if (z2) {
            this.j.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.g, c);
        if (z3) {
            i = getChildCount();
            for (i3 = 0; i3 < i; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                if (!layoutParams.a) {
                    layoutParams.c = 0.0f;
                }
            }
            a(i2, false, true);
            requestLayout();
        }
    }

    void b() {
        a(this.k);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void a(int r19) {
        /*
        r18 = this;
        r3 = 0;
        r2 = 2;
        r0 = r18;
        r4 = r0.k;
        r0 = r19;
        if (r4 == r0) goto L_0x0344;
    L_0x000a:
        r0 = r18;
        r2 = r0.k;
        r0 = r19;
        if (r2 >= r0) goto L_0x0030;
    L_0x0012:
        r2 = 66;
    L_0x0014:
        r0 = r18;
        r3 = r0.k;
        r0 = r18;
        r3 = r0.b(r3);
        r0 = r19;
        r1 = r18;
        r1.k = r0;
        r4 = r3;
        r3 = r2;
    L_0x0026:
        r0 = r18;
        r2 = r0.j;
        if (r2 != 0) goto L_0x0033;
    L_0x002c:
        r18.k();
    L_0x002f:
        return;
    L_0x0030:
        r2 = 17;
        goto L_0x0014;
    L_0x0033:
        r0 = r18;
        r2 = r0.A;
        if (r2 == 0) goto L_0x003d;
    L_0x0039:
        r18.k();
        goto L_0x002f;
    L_0x003d:
        r2 = r18.getWindowToken();
        if (r2 == 0) goto L_0x002f;
    L_0x0043:
        r0 = r18;
        r2 = r0.j;
        r0 = r18;
        r2.startUpdate(r0);
        r0 = r18;
        r2 = r0.B;
        r5 = 0;
        r0 = r18;
        r6 = r0.k;
        r6 = r6 - r2;
        r11 = java.lang.Math.max(r5, r6);
        r0 = r18;
        r5 = r0.j;
        r12 = r5.getCount();
        r5 = r12 + -1;
        r0 = r18;
        r6 = r0.k;
        r2 = r2 + r6;
        r13 = java.lang.Math.min(r5, r2);
        r0 = r18;
        r2 = r0.e;
        if (r12 == r2) goto L_0x00df;
    L_0x0073:
        r2 = r18.getResources();	 Catch:{ NotFoundException -> 0x00d5 }
        r3 = r18.getId();	 Catch:{ NotFoundException -> 0x00d5 }
        r2 = r2.getResourceName(r3);	 Catch:{ NotFoundException -> 0x00d5 }
    L_0x007f:
        r3 = new java.lang.IllegalStateException;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ";
        r4 = r4.append(r5);
        r0 = r18;
        r5 = r0.e;
        r4 = r4.append(r5);
        r5 = ", found: ";
        r4 = r4.append(r5);
        r4 = r4.append(r12);
        r5 = " Pager id: ";
        r4 = r4.append(r5);
        r2 = r4.append(r2);
        r4 = " Pager class: ";
        r2 = r2.append(r4);
        r4 = r18.getClass();
        r2 = r2.append(r4);
        r4 = " Problematic adapter: ";
        r2 = r2.append(r4);
        r0 = r18;
        r4 = r0.j;
        r4 = r4.getClass();
        r2 = r2.append(r4);
        r2 = r2.toString();
        r3.<init>(r2);
        throw r3;
    L_0x00d5:
        r2 = move-exception;
        r2 = r18.getId();
        r2 = java.lang.Integer.toHexString(r2);
        goto L_0x007f;
    L_0x00df:
        r6 = 0;
        r2 = 0;
        r5 = r2;
    L_0x00e2:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.size();
        if (r5 >= r2) goto L_0x0341;
    L_0x00ec:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r5);
        r2 = (com.twitter.android.widget.highlights.h) r2;
        r7 = r2.b;
        r0 = r18;
        r8 = r0.k;
        if (r7 < r8) goto L_0x01d4;
    L_0x00fe:
        r7 = r2.b;
        r0 = r18;
        r8 = r0.k;
        if (r7 != r8) goto L_0x0341;
    L_0x0106:
        if (r2 != 0) goto L_0x033e;
    L_0x0108:
        if (r12 <= 0) goto L_0x033e;
    L_0x010a:
        r0 = r18;
        r2 = r0.k;
        r0 = r18;
        r2 = r0.a(r2, r5);
        r10 = r2;
    L_0x0115:
        if (r10 == 0) goto L_0x0185;
    L_0x0117:
        r9 = 0;
        r8 = r5 + -1;
        if (r8 < 0) goto L_0x01d9;
    L_0x011c:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r8);
        r2 = (com.twitter.android.widget.highlights.h) r2;
    L_0x0126:
        r14 = r18.getClientWidth();
        if (r14 > 0) goto L_0x01dc;
    L_0x012c:
        r6 = 0;
    L_0x012d:
        r0 = r18;
        r7 = r0.k;
        r7 = r7 + -1;
        r16 = r7;
        r7 = r9;
        r9 = r16;
        r17 = r8;
        r8 = r5;
        r5 = r17;
    L_0x013d:
        if (r9 < 0) goto L_0x0147;
    L_0x013f:
        r15 = (r7 > r6 ? 1 : (r7 == r6 ? 0 : -1));
        if (r15 < 0) goto L_0x021b;
    L_0x0143:
        if (r9 >= r11) goto L_0x021b;
    L_0x0145:
        if (r2 != 0) goto L_0x01eb;
    L_0x0147:
        r6 = r10.d;
        r9 = r8 + 1;
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x0180;
    L_0x0151:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.size();
        if (r9 >= r2) goto L_0x0251;
    L_0x015b:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r9);
        r2 = (com.twitter.android.widget.highlights.h) r2;
        r7 = r2;
    L_0x0166:
        if (r14 > 0) goto L_0x0254;
    L_0x0168:
        r2 = 0;
        r5 = r2;
    L_0x016a:
        r0 = r18;
        r2 = r0.k;
        r2 = r2 + 1;
        r16 = r2;
        r2 = r7;
        r7 = r9;
        r9 = r16;
    L_0x0176:
        if (r9 >= r12) goto L_0x0180;
    L_0x0178:
        r11 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1));
        if (r11 < 0) goto L_0x029f;
    L_0x017c:
        if (r9 <= r13) goto L_0x029f;
    L_0x017e:
        if (r2 != 0) goto L_0x0261;
    L_0x0180:
        r0 = r18;
        r0.a(r10, r8, r4);
    L_0x0185:
        r0 = r18;
        r4 = r0.j;
        r0 = r18;
        r5 = r0.k;
        if (r10 == 0) goto L_0x02ed;
    L_0x018f:
        r2 = r10.a;
    L_0x0191:
        r0 = r18;
        r4.setPrimaryItem(r0, r5, r2);
        r0 = r18;
        r2 = r0.j;
        r0 = r18;
        r2.finishUpdate(r0);
        r5 = r18.getChildCount();
        r2 = 0;
        r4 = r2;
    L_0x01a5:
        if (r4 >= r5) goto L_0x02f0;
    L_0x01a7:
        r0 = r18;
        r6 = r0.getChildAt(r4);
        r2 = r6.getLayoutParams();
        r2 = (com.twitter.android.widget.highlights.StoriesViewPager.LayoutParams) r2;
        r2.f = r4;
        r7 = r2.a;
        if (r7 != 0) goto L_0x01d0;
    L_0x01b9:
        r7 = r2.c;
        r8 = 0;
        r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1));
        if (r7 != 0) goto L_0x01d0;
    L_0x01c0:
        r0 = r18;
        r6 = r0.b(r6);
        if (r6 == 0) goto L_0x01d0;
    L_0x01c8:
        r7 = r6.d;
        r2.c = r7;
        r6 = r6.b;
        r2.e = r6;
    L_0x01d0:
        r2 = r4 + 1;
        r4 = r2;
        goto L_0x01a5;
    L_0x01d4:
        r2 = r5 + 1;
        r5 = r2;
        goto L_0x00e2;
    L_0x01d9:
        r2 = 0;
        goto L_0x0126;
    L_0x01dc:
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r7 = r10.d;
        r6 = r6 - r7;
        r7 = r18.getPaddingLeft();
        r7 = (float) r7;
        r15 = (float) r14;
        r7 = r7 / r15;
        r6 = r6 + r7;
        goto L_0x012d;
    L_0x01eb:
        r15 = r2.b;
        if (r9 != r15) goto L_0x0215;
    L_0x01ef:
        r15 = r2.c;
        if (r15 != 0) goto L_0x0215;
    L_0x01f3:
        r0 = r18;
        r15 = r0.g;
        r15.remove(r5);
        r0 = r18;
        r15 = r0.j;
        r2 = r2.a;
        r0 = r18;
        r15.destroyItem(r0, r9, r2);
        r5 = r5 + -1;
        r8 = r8 + -1;
        if (r5 < 0) goto L_0x0219;
    L_0x020b:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r5);
        r2 = (com.twitter.android.widget.highlights.h) r2;
    L_0x0215:
        r9 = r9 + -1;
        goto L_0x013d;
    L_0x0219:
        r2 = 0;
        goto L_0x0215;
    L_0x021b:
        if (r2 == 0) goto L_0x0235;
    L_0x021d:
        r15 = r2.b;
        if (r9 != r15) goto L_0x0235;
    L_0x0221:
        r2 = r2.d;
        r7 = r7 + r2;
        r5 = r5 + -1;
        if (r5 < 0) goto L_0x0233;
    L_0x0228:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r5);
        r2 = (com.twitter.android.widget.highlights.h) r2;
        goto L_0x0215;
    L_0x0233:
        r2 = 0;
        goto L_0x0215;
    L_0x0235:
        r2 = r5 + 1;
        r0 = r18;
        r2 = r0.a(r9, r2);
        r2 = r2.d;
        r7 = r7 + r2;
        r8 = r8 + 1;
        if (r5 < 0) goto L_0x024f;
    L_0x0244:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r5);
        r2 = (com.twitter.android.widget.highlights.h) r2;
        goto L_0x0215;
    L_0x024f:
        r2 = 0;
        goto L_0x0215;
    L_0x0251:
        r7 = 0;
        goto L_0x0166;
    L_0x0254:
        r2 = r18.getPaddingRight();
        r2 = (float) r2;
        r5 = (float) r14;
        r2 = r2 / r5;
        r5 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r2 = r2 + r5;
        r5 = r2;
        goto L_0x016a;
    L_0x0261:
        r11 = r2.b;
        if (r9 != r11) goto L_0x0337;
    L_0x0265:
        r11 = r2.c;
        if (r11 != 0) goto L_0x0337;
    L_0x0269:
        r0 = r18;
        r11 = r0.g;
        r11.remove(r7);
        r0 = r18;
        r11 = r0.j;
        r2 = r2.a;
        r0 = r18;
        r11.destroyItem(r0, r9, r2);
        r0 = r18;
        r2 = r0.g;
        r2 = r2.size();
        if (r7 >= r2) goto L_0x029d;
    L_0x0285:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r7);
        r2 = (com.twitter.android.widget.highlights.h) r2;
    L_0x028f:
        r16 = r6;
        r6 = r2;
        r2 = r16;
    L_0x0294:
        r9 = r9 + 1;
        r16 = r2;
        r2 = r6;
        r6 = r16;
        goto L_0x0176;
    L_0x029d:
        r2 = 0;
        goto L_0x028f;
    L_0x029f:
        if (r2 == 0) goto L_0x02c6;
    L_0x02a1:
        r11 = r2.b;
        if (r9 != r11) goto L_0x02c6;
    L_0x02a5:
        r2 = r2.d;
        r6 = r6 + r2;
        r7 = r7 + 1;
        r0 = r18;
        r2 = r0.g;
        r2 = r2.size();
        if (r7 >= r2) goto L_0x02c4;
    L_0x02b4:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r7);
        r2 = (com.twitter.android.widget.highlights.h) r2;
    L_0x02be:
        r16 = r6;
        r6 = r2;
        r2 = r16;
        goto L_0x0294;
    L_0x02c4:
        r2 = 0;
        goto L_0x02be;
    L_0x02c6:
        r0 = r18;
        r2 = r0.a(r9, r7);
        r7 = r7 + 1;
        r2 = r2.d;
        r6 = r6 + r2;
        r0 = r18;
        r2 = r0.g;
        r2 = r2.size();
        if (r7 >= r2) goto L_0x02eb;
    L_0x02db:
        r0 = r18;
        r2 = r0.g;
        r2 = r2.get(r7);
        r2 = (com.twitter.android.widget.highlights.h) r2;
    L_0x02e5:
        r16 = r6;
        r6 = r2;
        r2 = r16;
        goto L_0x0294;
    L_0x02eb:
        r2 = 0;
        goto L_0x02e5;
    L_0x02ed:
        r2 = 0;
        goto L_0x0191;
    L_0x02f0:
        r18.k();
        r2 = r18.hasFocus();
        if (r2 == 0) goto L_0x002f;
    L_0x02f9:
        r2 = r18.findFocus();
        if (r2 == 0) goto L_0x0335;
    L_0x02ff:
        r0 = r18;
        r2 = r0.c(r2);
    L_0x0305:
        if (r2 == 0) goto L_0x030f;
    L_0x0307:
        r2 = r2.b;
        r0 = r18;
        r4 = r0.k;
        if (r2 == r4) goto L_0x002f;
    L_0x030f:
        r2 = 0;
    L_0x0310:
        r4 = r18.getChildCount();
        if (r2 >= r4) goto L_0x002f;
    L_0x0316:
        r0 = r18;
        r4 = r0.getChildAt(r2);
        r0 = r18;
        r5 = r0.b(r4);
        if (r5 == 0) goto L_0x0332;
    L_0x0324:
        r5 = r5.b;
        r0 = r18;
        r6 = r0.k;
        if (r5 != r6) goto L_0x0332;
    L_0x032c:
        r4 = r4.requestFocus(r3);
        if (r4 != 0) goto L_0x002f;
    L_0x0332:
        r2 = r2 + 1;
        goto L_0x0310;
    L_0x0335:
        r2 = 0;
        goto L_0x0305;
    L_0x0337:
        r16 = r6;
        r6 = r2;
        r2 = r16;
        goto L_0x0294;
    L_0x033e:
        r10 = r2;
        goto L_0x0115;
    L_0x0341:
        r2 = r6;
        goto L_0x0106;
    L_0x0344:
        r4 = r3;
        r3 = r2;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.widget.highlights.StoriesViewPager.a(int):void");
    }

    private void k() {
        if (this.ag != 0) {
            if (this.ah == null) {
                this.ah = new ArrayList();
            } else {
                this.ah.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.ah.add(getChildAt(i));
            }
            Collections.sort(this.ah, b);
        }
    }

    private void a(h hVar, int i, h hVar2) {
        float f;
        float f2;
        int i2;
        h hVar3;
        int i3;
        int count = this.j.getCount();
        int clientWidth = getClientWidth();
        if (clientWidth > 0) {
            f = ((float) this.q) / ((float) clientWidth);
        } else {
            f = 0.0f;
        }
        if (hVar2 != null) {
            clientWidth = hVar2.b;
            int i4;
            if (clientWidth < hVar.b) {
                f2 = (hVar2.e + hVar2.d) + f;
                i4 = clientWidth + 1;
                i2 = 0;
                while (i4 <= hVar.b && i2 < this.g.size()) {
                    hVar3 = (h) this.g.get(i2);
                    while (i4 > hVar3.b && i2 < this.g.size() - 1) {
                        i2++;
                        hVar3 = (h) this.g.get(i2);
                    }
                    while (i4 < hVar3.b) {
                        f2 += this.j.getPageWidth(i4) + f;
                        i4++;
                    }
                    hVar3.e = f2;
                    f2 += hVar3.d + f;
                    i4++;
                }
            } else if (clientWidth > hVar.b) {
                i2 = this.g.size() - 1;
                f2 = hVar2.e;
                i4 = clientWidth - 1;
                while (i4 >= hVar.b && i2 >= 0) {
                    hVar3 = (h) this.g.get(i2);
                    while (i4 < hVar3.b && i2 > 0) {
                        i2--;
                        hVar3 = (h) this.g.get(i2);
                    }
                    while (i4 > hVar3.b) {
                        f2 -= this.j.getPageWidth(i4) + f;
                        i4--;
                    }
                    f2 -= hVar3.d + f;
                    hVar3.e = f2;
                    i4--;
                }
            }
        }
        int size = this.g.size();
        float f3 = hVar.e;
        i2 = hVar.b - 1;
        this.u = hVar.b == 0 ? hVar.e : -3.4028235E38f;
        this.v = hVar.b == count + -1 ? (hVar.e + hVar.d) - 1.0f : AutoScrollHelper.NO_MAX;
        for (i3 = i - 1; i3 >= 0; i3--) {
            hVar3 = (h) this.g.get(i3);
            f2 = f3;
            while (i2 > hVar3.b) {
                f2 -= this.j.getPageWidth(i2) + f;
                i2--;
            }
            f3 = f2 - (hVar3.d + f);
            hVar3.e = f3;
            if (hVar3.b == 0) {
                this.u = f3;
            }
            i2--;
        }
        f3 = (hVar.e + hVar.d) + f;
        i2 = hVar.b + 1;
        for (i3 = i + 1; i3 < size; i3++) {
            hVar3 = (h) this.g.get(i3);
            f2 = f3;
            while (i2 < hVar3.b) {
                f2 = (this.j.getPageWidth(i2) + f) + f2;
                i2++;
            }
            if (hVar3.b == count - 1) {
                this.v = (hVar3.d + f2) - 1.0f;
            }
            hVar3.e = f2;
            f3 = f2 + (hVar3.d + f);
            i2++;
        }
        this.V = false;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState.a(savedState, this.k);
        if (this.j != null) {
            SavedState.a(savedState, this.j.saveState());
        }
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.j != null) {
                this.j.restoreState(SavedState.a(savedState), SavedState.b(savedState));
                a(SavedState.c(savedState), false, true);
                return;
            }
            this.l = SavedState.c(savedState);
            this.m = SavedState.a(savedState);
            this.n = SavedState.b(savedState);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (checkLayoutParams(layoutParams)) {
            layoutParams2 = layoutParams;
        } else {
            layoutParams2 = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams3 = (LayoutParams) layoutParams2;
        layoutParams3.a |= view instanceof f;
        if (!this.y) {
            super.addView(view, i, layoutParams2);
        } else if (layoutParams3 == null || !layoutParams3.a) {
            layoutParams3.d = true;
            addViewInLayout(view, i, layoutParams2);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public void removeView(View view) {
        if (this.y) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    h b(View view) {
        for (int i = 0; i < this.g.size(); i++) {
            h hVar = (h) this.g.get(i);
            if (this.j.isViewFromObject(view, hVar.a)) {
                return hVar;
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    com.twitter.android.widget.highlights.h c(android.view.View r3) {
        /*
        r2 = this;
    L_0x0000:
        r0 = r3.getParent();
        if (r0 == r2) goto L_0x0012;
    L_0x0006:
        if (r0 == 0) goto L_0x000c;
    L_0x0008:
        r1 = r0 instanceof android.view.View;
        if (r1 != 0) goto L_0x000e;
    L_0x000c:
        r0 = 0;
    L_0x000d:
        return r0;
    L_0x000e:
        r0 = (android.view.View) r0;
        r3 = r0;
        goto L_0x0000;
    L_0x0012:
        r0 = r2.b(r3);
        goto L_0x000d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.widget.highlights.StoriesViewPager.c(android.view.View):com.twitter.android.widget.highlights.h");
    }

    h b(int i) {
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            h hVar = (h) this.g.get(i2);
            if (hVar.b == i) {
                return hVar;
            }
        }
        return null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.U = true;
    }

    protected void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        int i3;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.F = Math.min(measuredWidth / 10, this.E);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            int i5;
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams != null && layoutParams.a) {
                    int i6 = layoutParams.b & 7;
                    int i7 = layoutParams.b & 112;
                    i3 = RtlSpacingHelper.UNDEFINED;
                    i5 = RtlSpacingHelper.UNDEFINED;
                    Object obj = (i7 == 48 || i7 == 80) ? 1 : null;
                    Object obj2 = (i6 == 3 || i6 == 5) ? 1 : null;
                    if (obj != null) {
                        i3 = 1073741824;
                    } else if (obj2 != null) {
                        i5 = 1073741824;
                    }
                    if (layoutParams.width != -2) {
                        i7 = 1073741824;
                        i3 = layoutParams.width != -1 ? layoutParams.width : paddingLeft;
                    } else {
                        i7 = i3;
                        i3 = paddingLeft;
                    }
                    if (layoutParams.height != -2) {
                        i5 = 1073741824;
                        if (layoutParams.height != -1) {
                            measuredWidth = layoutParams.height;
                            childAt.measure(MeasureSpec.makeMeasureSpec(i3, i7), MeasureSpec.makeMeasureSpec(measuredWidth, i5));
                            if (obj != null) {
                                measuredHeight -= childAt.getMeasuredHeight();
                            } else if (obj2 != null) {
                                paddingLeft -= childAt.getMeasuredWidth();
                            }
                        }
                    }
                    measuredWidth = measuredHeight;
                    childAt.measure(MeasureSpec.makeMeasureSpec(i3, i7), MeasureSpec.makeMeasureSpec(measuredWidth, i5));
                    if (obj != null) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (obj2 != null) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
            }
        }
        this.w = MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.x = MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.y = true;
        b();
        this.y = false;
        i3 = getChildCount();
        for (i5 = 0; i5 < i3; i5++) {
            View childAt2 = getChildAt(i5);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (layoutParams == null || !layoutParams.a) {
                    childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.c * ((float) paddingLeft)), 1073741824), this.x);
                }
            }
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            a(i, i3, this.q, this.q);
        }
    }

    public void scrollTo(int i, int i2) {
        super.scrollTo(i, i2);
        this.f = (float) i;
    }

    private void a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.g.isEmpty()) {
            h b = b(this.k);
            int min = (int) ((b != null ? Math.min(b.e, this.v) : 0.0f) * ((float) ((i - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                a(false);
                scrollTo(min, getScrollY());
                return;
            }
            return;
        }
        int paddingLeft = (int) (((float) (((i - getPaddingLeft()) - getPaddingRight()) + i3)) * (((float) getScrollX()) / ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))));
        scrollTo(paddingLeft, getScrollY());
        if (!this.o.isFinished()) {
            this.o.startScroll(paddingLeft, 0, (int) (b(this.k).e * ((float) i)), 0, this.o.getDuration() - this.o.timePassed());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams;
        int max;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i7 = 0;
        int i8 = 0;
        while (i8 < childCount) {
            int measuredWidth;
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a) {
                    int i9 = layoutParams.b & 112;
                    switch (layoutParams.b & 7) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            max = Math.max((i5 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case WireMessage.WIRE_AUTH /*3*/:
                            max = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case mx.UserView_actionButtonPaddingRight /*5*/:
                            measuredWidth = (i5 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            max = measuredWidth;
                            break;
                        default:
                            max = paddingLeft;
                            break;
                    }
                    int i10;
                    switch (i9) {
                        case mx.TwitterButton_nodpiBaseIconName /*16*/:
                            measuredWidth = Math.max((i6 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            i10 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i10;
                            break;
                        case mx.AppCompatTheme_homeAsUpIndicator /*48*/:
                            measuredWidth = childAt.getMeasuredHeight() + paddingTop;
                            i10 = paddingTop;
                            paddingTop = paddingBottom;
                            paddingBottom = measuredWidth;
                            measuredWidth = i10;
                            break;
                        case mx.AppCompatTheme_panelMenuListTheme /*80*/:
                            measuredWidth = (i6 - paddingBottom) - childAt.getMeasuredHeight();
                            i10 = paddingBottom + childAt.getMeasuredHeight();
                            paddingBottom = paddingTop;
                            paddingTop = i10;
                            break;
                        default:
                            measuredWidth = paddingTop;
                            i10 = paddingBottom;
                            paddingBottom = paddingTop;
                            paddingTop = i10;
                            break;
                    }
                    max += scrollX;
                    childAt.layout(max, measuredWidth, childAt.getMeasuredWidth() + max, childAt.getMeasuredHeight() + measuredWidth);
                    measuredWidth = i7 + 1;
                    i7 = paddingBottom;
                    paddingBottom = paddingTop;
                    paddingTop = paddingRight;
                    paddingRight = paddingLeft;
                    i8++;
                    paddingLeft = paddingRight;
                    paddingRight = paddingTop;
                    paddingTop = i7;
                    i7 = measuredWidth;
                }
            }
            measuredWidth = i7;
            i7 = paddingTop;
            paddingTop = paddingRight;
            paddingRight = paddingLeft;
            i8++;
            paddingLeft = paddingRight;
            paddingRight = paddingTop;
            paddingTop = i7;
            i7 = measuredWidth;
        }
        max = (i5 - paddingLeft) - paddingRight;
        for (paddingRight = 0; paddingRight < childCount; paddingRight++) {
            View childAt2 = getChildAt(paddingRight);
            if (childAt2.getVisibility() != 8) {
                layoutParams = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams.a) {
                    h b = b(childAt2);
                    if (b != null) {
                        i5 = ((int) (b.e * ((float) max))) + paddingLeft;
                        if (layoutParams.d) {
                            layoutParams.d = false;
                            childAt2.measure(MeasureSpec.makeMeasureSpec((int) (layoutParams.c * ((float) max)), 1073741824), MeasureSpec.makeMeasureSpec((i6 - paddingTop) - paddingBottom, 1073741824));
                        }
                        childAt2.layout(i5, paddingTop, childAt2.getMeasuredWidth() + i5, childAt2.getMeasuredHeight() + paddingTop);
                    }
                }
            }
        }
        this.s = paddingTop;
        this.t = i6 - paddingBottom;
        this.aa = i7;
        if (this.U && childCount - i7 > 0) {
            a(this.k, false, 0, false);
        }
        this.U = false;
    }

    public void computeScroll() {
        if (this.o.isFinished() || !this.o.computeScrollOffset()) {
            a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.o.getCurrX();
        int currY = this.o.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!d(currX)) {
                this.o.abortAnimation();
                scrollTo(0, currY);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    private boolean d(int i) {
        if (this.g.size() == 0) {
            this.W = false;
            a(0, 0.0f, 0);
            if (this.W) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        h l = l();
        int clientWidth = getClientWidth();
        int i2 = this.q + clientWidth;
        float f = ((float) this.q) / ((float) clientWidth);
        int i3 = l.b;
        float f2 = ((((float) i) / ((float) clientWidth)) - l.e) / (l.d + f);
        clientWidth = (int) (((float) i2) * f2);
        this.W = false;
        a(i3, f2, clientWidth);
        if (this.W) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    protected void a(int i, float f, int i2) {
        int paddingLeft;
        int paddingRight;
        int i3;
        if (this.aa > 0) {
            int scrollX = getScrollX();
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            i3 = 0;
            while (i3 < childCount) {
                int i4;
                View childAt = getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a) {
                    int max;
                    switch (layoutParams.b & 7) {
                        case WireMessage.WIRE_CHAT /*1*/:
                            max = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        case WireMessage.WIRE_AUTH /*3*/:
                            max = childAt.getWidth() + paddingLeft;
                            i4 = paddingLeft;
                            paddingLeft = paddingRight;
                            paddingRight = max;
                            max = i4;
                            break;
                        case mx.UserView_actionButtonPaddingRight /*5*/:
                            max = (width - paddingRight) - childAt.getMeasuredWidth();
                            i4 = paddingRight + childAt.getMeasuredWidth();
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                        default:
                            max = paddingLeft;
                            i4 = paddingRight;
                            paddingRight = paddingLeft;
                            paddingLeft = i4;
                            break;
                    }
                    max = (max + scrollX) - childAt.getLeft();
                    if (max != 0) {
                        childAt.offsetLeftAndRight(max);
                    }
                } else {
                    i4 = paddingRight;
                    paddingRight = paddingLeft;
                    paddingLeft = i4;
                }
                i3++;
                i4 = paddingLeft;
                paddingLeft = paddingRight;
                paddingRight = i4;
            }
        }
        if (this.ab != null) {
            this.ab.a(i, f, i2);
        }
        if (this.ac != null) {
            this.ac.a(i, f, i2);
        }
        if (this.ae != null) {
            paddingRight = getScrollX();
            i3 = getChildCount();
            for (paddingLeft = 0; paddingLeft < i3; paddingLeft++) {
                View childAt2 = getChildAt(paddingLeft);
                if (!((LayoutParams) childAt2.getLayoutParams()).a) {
                    this.ae.a(childAt2, ((float) (childAt2.getLeft() - paddingRight)) / ((float) getClientWidth()));
                }
            }
        }
        this.W = true;
    }

    private void a(boolean z) {
        int scrollX;
        boolean z2 = this.aj == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            this.o.abortAnimation();
            scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.o.getCurrX();
            int currY = this.o.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                scrollTo(currX, currY);
            }
        }
        this.A = false;
        boolean z3 = z2;
        for (scrollX = 0; scrollX < this.g.size(); scrollX++) {
            h hVar = (h) this.g.get(scrollX);
            if (hVar.c) {
                hVar.c = false;
                z3 = true;
            }
        }
        if (!z3) {
            return;
        }
        if (z) {
            ViewCompat.postOnAnimation(this, this.ai);
        } else {
            this.ai.run();
        }
    }

    private boolean a(float f, float f2) {
        return (f < ((float) this.F) && f2 > 0.0f) || (f > ((float) (getWidth() - this.F)) && f2 < 0.0f);
    }

    private void b(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).a) {
                int i2;
                if (z) {
                    i2 = 2;
                } else {
                    i2 = 0;
                }
                ViewCompat.setLayerType(getChildAt(i), i2, null);
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return true;
        }
        int action = motionEvent.getAction() & MotionEventCompat.ACTION_MASK;
        if (action == 3 || action == 1) {
            c();
            return false;
        }
        if (action != 0) {
            if (this.C) {
                return true;
            }
            if (this.D) {
                return false;
            }
        }
        switch (action) {
            case mx.View_android_theme /*0*/:
                float x = motionEvent.getX();
                this.J = x;
                this.H = x;
                x = motionEvent.getY();
                this.K = x;
                this.I = x;
                this.L = MotionEventCompat.getPointerId(motionEvent, 0);
                this.D = false;
                this.o.computeScrollOffset();
                if (this.aj == 2 && Math.abs(this.o.getFinalX() - this.o.getCurrX()) > this.Q) {
                    this.o.abortAnimation();
                    this.A = false;
                    b();
                    this.C = true;
                    c(true);
                    setScrollState(1);
                    break;
                }
                a(false);
                this.C = false;
                break;
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                action = this.L;
                if (action != -1) {
                    action = MotionEventCompat.findPointerIndex(motionEvent, action);
                    float x2 = MotionEventCompat.getX(motionEvent, action);
                    float f = x2 - this.H;
                    float abs = Math.abs(f);
                    float y = MotionEventCompat.getY(motionEvent, action);
                    float abs2 = Math.abs(y - this.K);
                    if (f == 0.0f || a(this.H, f) || !a(this, false, (int) f, (int) x2, (int) y)) {
                        if (abs > ((float) this.G) && 0.5f * abs > abs2) {
                            this.C = true;
                            c(true);
                            setScrollState(1);
                            this.H = f > 0.0f ? this.J + ((float) this.G) : this.J - ((float) this.G);
                            this.I = y;
                            setScrollingCacheEnabled(true);
                        } else if (abs2 > ((float) this.G)) {
                            this.D = true;
                        }
                        if (this.C) {
                            c(x2);
                            break;
                        }
                    }
                    this.H = x2;
                    this.I = y;
                    this.D = true;
                    return false;
                }
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                a(motionEvent);
                break;
        }
        if (this.M == null) {
            this.M = VelocityTracker.obtain();
        }
        this.M.addMovement(motionEvent);
        return this.C;
    }

    public void c() {
        this.C = false;
        this.D = false;
        this.L = -1;
        if (this.M != null) {
            this.M.recycle();
            this.M = null;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (this.R) {
            return true;
        }
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.j == null || this.j.getCount() == 0) {
            return false;
        }
        if (this.M == null) {
            this.M = VelocityTracker.obtain();
        }
        this.M.addMovement(motionEvent);
        float x;
        int xVelocity;
        switch (motionEvent.getAction() & MotionEventCompat.ACTION_MASK) {
            case mx.View_android_theme /*0*/:
                this.o.abortAnimation();
                this.A = false;
                b();
                x = motionEvent.getX();
                this.J = x;
                this.H = x;
                x = motionEvent.getY();
                this.K = x;
                this.I = x;
                this.f = (float) getScrollX();
                this.L = MotionEventCompat.getPointerId(motionEvent, 0);
                break;
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.C) {
                    VelocityTracker velocityTracker = this.M;
                    velocityTracker.computeCurrentVelocity(1000, (float) this.O);
                    xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.L);
                    this.A = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    h l = l();
                    a(a(l.b, ((((float) scrollX) / ((float) clientWidth)) - l.e) / l.d, xVelocity, (int) (MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.L)) - this.J)), true, true, xVelocity);
                    this.L = -1;
                    m();
                    break;
                }
                break;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!this.C) {
                    xVelocity = MotionEventCompat.findPointerIndex(motionEvent, this.L);
                    x = MotionEventCompat.getX(motionEvent, xVelocity);
                    float abs = Math.abs(x - this.H);
                    float y = MotionEventCompat.getY(motionEvent, xVelocity);
                    float abs2 = Math.abs(y - this.I);
                    if (abs > ((float) this.G) && abs > abs2) {
                        this.C = true;
                        c(true);
                        if (x - this.J > 0.0f) {
                            abs2 = this.J + ((float) this.G);
                        } else {
                            abs2 = this.J - ((float) this.G);
                        }
                        this.H = abs2;
                        this.I = y;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                if (this.C) {
                    c(MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.L)));
                    break;
                }
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                if (this.C) {
                    a(this.k, true, 0, false);
                    this.L = -1;
                    m();
                    break;
                }
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                xVelocity = MotionEventCompat.getActionIndex(motionEvent);
                this.H = MotionEventCompat.getX(motionEvent, xVelocity);
                this.L = MotionEventCompat.getPointerId(motionEvent, xVelocity);
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                a(motionEvent);
                this.H = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.L));
                break;
        }
        return true;
    }

    private void c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private void c(float f) {
        float f2;
        float f3 = this.H - f;
        this.H = f;
        int clientWidth = getClientWidth();
        float f4 = ((float) clientWidth) * this.u;
        float f5 = ((float) clientWidth) * this.v;
        float f6 = this.f + f3;
        f4 = f6 < f4 ? f4 - ((f4 - f6) * this.ak) : f6 > f5 ? ((f6 - f5) * this.ak) + f5 : f6;
        h hVar = (h) this.g.get(this.g.size() - 1);
        if (hVar.b != this.j.getCount() - 1) {
            f2 = hVar.e * ((float) clientWidth);
            Object obj = null;
        } else {
            int i = 1;
            f2 = f5;
        }
        if (f4 > f2 && r0 != null) {
            f2 = Math.abs(f4 - f2) / (((float) clientWidth) * this.ak);
            if (this.T != null) {
                g gVar = (g) this.T.get();
                if (gVar != null) {
                    gVar.a(f2);
                }
            }
        }
        this.H += f4 - ((float) ((int) f4));
        scrollTo((int) f4, getScrollY());
        this.f = f6;
        d((int) f4);
    }

    private h l() {
        float f;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? ((float) getScrollX()) / ((float) clientWidth) : 0.0f;
        if (clientWidth > 0) {
            f = ((float) this.q) / ((float) clientWidth);
        } else {
            f = 0.0f;
        }
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i = -1;
        int i2 = 0;
        Object obj = 1;
        h hVar = null;
        while (i2 < this.g.size()) {
            int i3;
            h hVar2;
            h hVar3 = (h) this.g.get(i2);
            h hVar4;
            if (obj != null || hVar3.b == i + 1) {
                hVar4 = hVar3;
                i3 = i2;
                hVar2 = hVar4;
            } else {
                hVar3 = this.h;
                hVar3.e = (f2 + f3) + f;
                hVar3.b = i + 1;
                hVar3.d = this.j.getPageWidth(hVar3.b);
                hVar4 = hVar3;
                i3 = i2 - 1;
                hVar2 = hVar4;
            }
            f2 = hVar2.e;
            f3 = (hVar2.d + f2) + f;
            if (obj == null && scrollX < f2) {
                return hVar;
            }
            if (scrollX < f3 || i3 == this.g.size() - 1) {
                return hVar2;
            }
            f3 = f2;
            i = hVar2.b;
            obj = null;
            f2 = hVar2.d;
            hVar = hVar2;
            i2 = i3 + 1;
        }
        return hVar;
    }

    private int a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.P || Math.abs(i2) <= this.N) {
            i = (int) ((i >= this.k ? 0.4f : 0.6f) + (((float) i) + f));
        } else if (i2 <= 0) {
            i++;
        }
        if (this.g.size() <= 0) {
            return i;
        }
        return Math.max(((h) this.g.get(0)).b, Math.min(i, ((h) this.g.get(this.g.size() - 1)).b));
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.q > 0 && this.r != null && this.g.size() > 0 && this.j != null) {
            int scrollX = getScrollX();
            int width = getWidth();
            float f = ((float) this.q) / ((float) width);
            h hVar = (h) this.g.get(0);
            float f2 = hVar.e;
            int size = this.g.size();
            int i = hVar.b;
            int i2 = ((h) this.g.get(size - 1)).b;
            int i3 = 0;
            int i4 = i;
            while (i4 < i2) {
                float f3;
                while (i4 > hVar.b && i3 < size) {
                    i3++;
                    hVar = (h) this.g.get(i3);
                }
                if (i4 == hVar.b) {
                    f3 = (hVar.e + hVar.d) * ((float) width);
                    f2 = (hVar.e + hVar.d) + f;
                } else {
                    float pageWidth = this.j.getPageWidth(i4);
                    f3 = (f2 + pageWidth) * ((float) width);
                    f2 += pageWidth + f;
                }
                if (((float) this.q) + f3 > ((float) scrollX)) {
                    this.r.setBounds((int) f3, this.s, (int) ((((float) this.q) + f3) + 0.5f), this.t);
                    this.r.draw(canvas);
                }
                if (f3 <= ((float) (scrollX + width))) {
                    i4++;
                } else {
                    return;
                }
            }
        }
    }

    public boolean d() {
        if (this.C) {
            return false;
        }
        this.R = true;
        setScrollState(1);
        this.H = 0.0f;
        this.J = 0.0f;
        if (this.M == null) {
            this.M = VelocityTracker.obtain();
        } else {
            this.M.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.M.addMovement(obtain);
        obtain.recycle();
        this.S = uptimeMillis;
        return true;
    }

    public void e() {
        if (this.R) {
            VelocityTracker velocityTracker = this.M;
            velocityTracker.computeCurrentVelocity(1000, (float) this.O);
            int xVelocity = (int) VelocityTrackerCompat.getXVelocity(velocityTracker, this.L);
            this.A = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            h l = l();
            a(a(l.b, ((((float) scrollX) / ((float) clientWidth)) - l.e) / l.d, xVelocity, (int) (this.H - this.J)), true, true, xVelocity);
            m();
            this.R = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public void b(float f) {
        if (this.R) {
            float f2;
            float f3;
            this.H += f;
            float scrollX = ((float) getScrollX()) - f;
            int clientWidth = getClientWidth();
            float f4 = ((float) clientWidth) * this.u;
            float f5 = ((float) clientWidth) * this.v;
            h hVar = (h) this.g.get(0);
            h hVar2 = (h) this.g.get(this.g.size() - 1);
            if (hVar.b != 0) {
                f2 = hVar.e * ((float) clientWidth);
            } else {
                f2 = f4;
            }
            if (hVar2.b != this.j.getCount() - 1) {
                f3 = hVar2.e * ((float) clientWidth);
            } else {
                f3 = f5;
            }
            if (scrollX >= f2) {
                if (scrollX > f3) {
                    f2 = f3;
                } else {
                    f2 = scrollX;
                }
            }
            this.H += f2 - ((float) ((int) f2));
            scrollTo((int) f2, getScrollY());
            d((int) f2);
            MotionEvent obtain = MotionEvent.obtain(this.S, SystemClock.uptimeMillis(), 2, this.H, 0.0f, 0);
            this.M.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    public boolean f() {
        return this.R;
    }

    private void a(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.L) {
            actionIndex = actionIndex == 0 ? 1 : 0;
            this.H = MotionEventCompat.getX(motionEvent, actionIndex);
            this.L = MotionEventCompat.getPointerId(motionEvent, actionIndex);
            if (this.M != null) {
                this.M.clear();
            }
        }
    }

    private void m() {
        this.C = false;
        this.D = false;
        if (this.M != null) {
            this.M.recycle();
            this.M = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.z != z) {
            this.z = z;
        }
    }

    public boolean canScrollHorizontally(int i) {
        boolean z = true;
        if (this.j == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            if (scrollX <= ((int) (((float) clientWidth) * this.u))) {
                z = false;
            }
            return z;
        } else if (i <= 0) {
            return false;
        } else {
            if (scrollX >= ((int) (((float) clientWidth) * this.v))) {
                z = false;
            }
            return z;
        }
    }

    protected boolean a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    if (a(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        if (z && ViewCompat.canScrollHorizontally(view, -i)) {
            return true;
        }
        return false;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || a(keyEvent);
    }

    public boolean a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case mx.TweetView_mediaTopMargin /*21*/:
                return c(17);
            case mx.TweetView_mediaBottomMargin /*22*/:
                return c(66);
            case mx.AppCompatTheme_popupWindowStyle /*61*/:
                if (VERSION.SDK_INT < 11) {
                    return false;
                }
                if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                    return c(2);
                }
                if (KeyEventCompat.hasModifiers(keyEvent, 1)) {
                    return c(1);
                }
                return false;
            default:
                return false;
        }
    }

    public boolean c(int i) {
        View view;
        boolean g;
        View findFocus = findFocus();
        if (findFocus == this) {
            view = null;
        } else {
            if (findFocus != null) {
                Object obj;
                for (StoriesViewPager parent = findFocus.getParent(); parent instanceof ViewGroup; parent = parent.getParent()) {
                    if (parent == this) {
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj == null) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        stringBuilder.append(" => ").append(parent2.getClass().getSimpleName());
                    }
                    cfb.e("ElasticViewPager", "arrowScroll tried to find focus based on non-child current focused view " + stringBuilder);
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                g = g();
            } else {
                if (i == 66 || i == 2) {
                    g = h();
                }
                g = false;
            }
        } else if (i == 17) {
            g = (view == null || a(this.i, findNextFocus).left < a(this.i, view).left) ? findNextFocus.requestFocus() : g();
        } else {
            if (i == 66) {
                g = (view == null || a(this.i, findNextFocus).left > a(this.i, view).left) ? findNextFocus.requestFocus() : h();
            }
            g = false;
        }
        if (g) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return g;
    }

    private Rect a(Rect rect, View view) {
        Rect rect2;
        if (rect == null) {
            rect2 = new Rect();
        } else {
            rect2 = rect;
        }
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        StoriesViewPager parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    boolean g() {
        if (this.k <= 0) {
            return false;
        }
        a(this.k - 1, true);
        return true;
    }

    boolean h() {
        if (this.j == null || this.k >= this.j.getCount() - 1) {
            return false;
        }
        a(this.k + 1, true);
        return true;
    }

    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    h b = b(childAt);
                    if (b != null && b.b == this.k) {
                        childAt.addFocusables(arrayList, i, i2);
                    }
                }
            }
        }
        if ((descendantFocusability == AccessibilityNodeInfoCompat.ACTION_EXPAND && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if (((i2 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && arrayList != null) {
            arrayList.add(this);
        }
    }

    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                h b = b(childAt);
                if (b != null && b.b == this.k) {
                    childAt.addTouchables(arrayList);
                }
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                h b = b(childAt);
                if (b != null && b.b == this.k && childAt.requestFocus(i, rect)) {
                    return true;
                }
            }
            i2 += i3;
        }
        return false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0) {
                h b = b(childAt);
                if (b != null && b.b == this.k && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
