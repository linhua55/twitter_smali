package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import bct;
import bcv;
import bdc;
import bdd;
import bde;
import com.twitter.android.mx;
import com.twitter.library.client.navigation.x;
import defpackage.bca;
import defpackage.bcx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class ToolBar extends ViewGroup {
    private DrawerToolBarItemView A;
    private bca B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private View G;
    private boolean H;
    private ImageView I;
    private bca J;
    private PopupWindow K;
    private int L;
    private final Rect M;
    private final int N;
    private ViewGroup O;
    private View P;
    private boolean Q;
    private int R;
    private boolean S;
    private int T;
    private int U;
    private int V;
    private boolean W;
    private final int a;
    private boolean aa;
    private final Context b;
    private int c;
    private Context d;
    private final int e;
    private final Drawable f;
    private final int g;
    private final int h;
    private final int i;
    private final aq j;
    private final int k;
    private final int l;
    private final int m;
    private final List<bca> n;
    private final ar o;
    private final ap p;
    private final as q;
    private final String r;
    private x s;
    private final Map<Integer, bca> t;
    private final int u;
    private List<bca> v;
    private List<bca> w;
    private final List<bca> x;
    private final List<bca> y;
    private au z;

    /* compiled from: Twttr */
    public class LayoutParams extends MarginLayoutParams {
        public final int a;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolBarLayout);
            this.a = obtainStyledAttributes.getInt(bdd.ToolBarLayout_android_layout_gravity, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.a = 19;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.a = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            this(layoutParams, -1);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams, int i) {
            super(layoutParams);
            this.a = i;
        }
    }

    public ToolBar(Context context) {
        this(context, null);
    }

    public ToolBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.toolBarStyle);
    }

    public ToolBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.t = new LinkedHashMap();
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.x = new ArrayList();
        this.y = new ArrayList();
        this.M = new Rect();
        this.b = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolBar, i, 0);
        setThemeId(obtainStyledAttributes.getResourceId(bdd.ToolBar_toolBarTheme, 0));
        this.a = obtainStyledAttributes.getResourceId(bdd.ToolBar_toolBarItemBackground, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(bdd.ToolBar_toolBarItemPadding, 0);
        int a = bde.a(context);
        this.f = bde.a(obtainStyledAttributes.getDrawable(bdd.ToolBar_toolBarOverflowDrawable), a);
        this.r = obtainStyledAttributes.getString(bdd.ToolBar_toolBarOverflowContentDescription);
        this.g = obtainStyledAttributes.getResourceId(bdd.ToolBar_toolBarDrawerItemStyle, 0);
        this.u = obtainStyledAttributes.getDimensionPixelSize(bdd.ToolBar_toolBarPaddingTop, 0);
        this.k = obtainStyledAttributes.getResourceId(bdd.ToolBar_toolBarHomeStyle, 0);
        this.l = obtainStyledAttributes.getResourceId(bdd.ToolBar_toolBarItemStyle, 0);
        setTitle(obtainStyledAttributes.getString(bdd.ToolBar_toolBarTitle));
        Drawable drawable = obtainStyledAttributes.getDrawable(bdd.ToolBar_toolBarIcon);
        if (drawable == null) {
            drawable = new ColorDrawable(0);
        }
        setIcon(bde.a(drawable, a));
        setUpIndicator(bde.a(obtainStyledAttributes.getDrawable(bdd.ToolBar_toolBarUpIndicator), a));
        super.setPadding(0, 0, 0, 0);
        Resources resources = getResources();
        this.i = resources.getDimensionPixelSize(bcv.preferred_popup_width);
        this.h = Math.max(resources.getDisplayMetrics().widthPixels / 2, this.i);
        this.o = new ar();
        this.q = new as();
        this.p = new ap();
        this.j = new aq(this.o, null);
        this.n = new ArrayList();
        this.R = obtainStyledAttributes.getInt(bdd.ToolBar_toolBarDisplayOptions, 46);
        this.m = obtainStyledAttributes.getDimensionPixelOffset(bdd.ToolBar_popupMenuXOffset, 0);
        this.N = obtainStyledAttributes.getResourceId(bdd.ToolBar_toolBarCustomViewId, 0);
        l();
        obtainStyledAttributes.recycle();
    }

    protected void setOffsetLayoutTopPx(int i) {
        this.V = i;
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
    }

    public int getThemeId() {
        return this.c;
    }

    public void setThemeId(int i) {
        if (this.c != i) {
            this.c = i;
            this.d = null;
            if (this.c > 0) {
                this.d = new ContextThemeWrapper(this.b, this.c);
            }
        }
    }

    public Context getThemedContext() {
        return this.d == null ? this.b : this.d;
    }

    public void setDisplayShowHomeAsUpEnabled(boolean z) {
        if (this.C != z) {
            if (this.z != null) {
                this.z.a(z);
            }
            this.C = z;
            k();
        }
    }

    public void setDisplayShowTitleEnabled(boolean z) {
        if (this.z != null) {
            this.z.b(z);
        }
    }

    public void setDisplayFullExpandEnabled(boolean z) {
        if (this.D != z) {
            au auVar = this.z;
            if (!(auVar == null || this.G == null)) {
                if (z) {
                    this.F = this.z.getVisibility();
                    auVar.d(false);
                    auVar.setVisibility(8);
                } else {
                    auVar.setVisibility(this.F);
                    auVar.d(true);
                }
            }
            this.D = z;
        }
    }

    private void setDisplayHomeEnabled(boolean z) {
        if (this.z != null) {
            this.z.c(z);
        }
    }

    private void setDisplayHomeClickable(boolean z) {
        if (this.z != null) {
            this.E = z;
            k();
        }
    }

    private void setDisplayHideOverflow(boolean z) {
        if (this.W != z) {
            this.W = z;
            if (this.W && this.I != null) {
                a(this.I);
                this.I = null;
            }
        }
    }

    public void setDisplayDrawerIcon(boolean z) {
        int i = 0;
        if (this.aa != z) {
            if (this.A == null) {
                ToolBarItemView drawerToolBarItemView = new DrawerToolBarItemView(new ContextThemeWrapper(getThemedContext(), this.g), null, this.g);
                drawerToolBarItemView.setId(bcx.drawer_icon);
                drawerToolBarItemView.setContentDescription(getResources().getString(bdc.modern_nav_drawer_icon));
                if (this.a != 0) {
                    drawerToolBarItemView.setBackgroundResource(this.a);
                }
                this.B = new bca(this).a(bcx.drawer_icon).a(drawerToolBarItemView);
                drawerToolBarItemView.setOnClickListener(new ai(this));
                this.A = drawerToolBarItemView;
                this.A.setVisibility(8);
                addView(this.A, 0);
            }
            DrawerToolBarItemView drawerToolBarItemView2 = this.A;
            if (!z) {
                i = 8;
            }
            drawerToolBarItemView2.setVisibility(i);
            this.aa = z;
        }
    }

    private void setExtraWidth(int i) {
        if (this.S && this.z != null) {
            j().a(i);
        }
    }

    private void setUpIndicator(Drawable drawable) {
        if (drawable != null || this.z != null) {
            j().b(drawable);
        }
    }

    public final void setIcon(Drawable drawable) {
        if (drawable != null || this.z != null) {
            j().a(drawable);
        }
    }

    public final void setDrawerIcon(Bitmap bitmap) {
        if (this.B != null) {
            this.B.a(bitmap);
        }
    }

    public final void a(CharSequence charSequence, boolean z) {
        if (charSequence != null || this.z != null) {
            j().a(charSequence, z);
        }
    }

    public final void setTitle(CharSequence charSequence) {
        if (charSequence != null || this.z != null) {
            j().a(charSequence);
        }
    }

    public final void setSubtitle(CharSequence charSequence) {
        if (this.z != null) {
            this.z.b(charSequence);
        }
    }

    public final void b(CharSequence charSequence, boolean z) {
        if (this.z != null) {
            this.z.b(charSequence, z);
        }
    }

    public final CharSequence getSubtitle() {
        if (this.z == null) {
            return null;
        }
        return this.z.a();
    }

    public final CharSequence getTitle() {
        if (this.z == null) {
            return null;
        }
        return this.z.b();
    }

    public final void setTitleDescription(CharSequence charSequence) {
        if (this.z != null) {
            this.z.c(charSequence);
        }
    }

    public void setNumber(int i) {
        if (i > 0 || this.z != null) {
            j().b(i);
        }
    }

    private au j() {
        if (this.z == null) {
            this.z = new au(new ContextThemeWrapper(getContext(), this.k), null, this.k);
            this.T = this.z.getPaddingLeft();
            this.U = this.z.getPaddingRight();
            this.z.setId(bcx.home);
            this.z.setOnClickListener(new aj(this, new bca(this).a(bcx.home)));
            addView(this.z, 0);
        }
        k();
        return this.z;
    }

    private void k() {
        boolean z = false;
        if (this.z != null) {
            boolean z2;
            au auVar = this.z;
            if (this.C || this.E) {
                z2 = true;
            } else {
                z2 = false;
            }
            auVar.setClickable(z2);
            au auVar2 = this.z;
            if (this.C || this.E) {
                z = true;
            }
            auVar2.setLongClickable(z);
            this.z.a(this.C);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = this.N != 0 ? findViewById(this.N) : null;
        if (findViewById != null) {
            a(findViewById, (LayoutParams) findViewById.getLayoutParams());
        }
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        int measuredWidth = getMeasuredWidth();
        int i3 = 0;
        if (!(this.A == null || this.A.getVisibility() == 8)) {
            this.A.measure(MeasureSpec.makeMeasureSpec(measuredWidth, 0), makeMeasureSpec);
            i3 = 0 + this.A.getMeasuredWidth();
        }
        if (!(this.z == null || this.z.getVisibility() == 8)) {
            this.z.measure(MeasureSpec.makeMeasureSpec(measuredWidth, 0), makeMeasureSpec);
            i3 += this.z.getMeasuredWidth();
        }
        if (this.G != null) {
            this.G.measure(MeasureSpec.makeMeasureSpec(measuredWidth - i3, 0), makeMeasureSpec);
            return;
        }
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int i4 = measuredWidth - i3;
        int i5 = i4;
        i4 = 0;
        measuredWidth = 0;
        for (bca bca : this.t.values()) {
            int i6 = bca.i();
            Object obj = (i6 & 2) != 0 ? 1 : null;
            boolean h = bca.h();
            int i7 = (h && (i6 == 0 || (bca.b() == 0 && obj == null))) ? 1 : 0;
            i4 |= i7;
            int i8 = (obj == null && h) ? 1 : 0;
            measuredWidth |= i8;
            View c = c(bca);
            if (i6 != 0 && h) {
                c.setPadding(this.e, 0, this.e, 0);
                c.measure(makeMeasureSpec2, makeMeasureSpec);
                if (!g(bca)) {
                    i3 = i5 - c.getMeasuredWidth();
                    i5 = i3;
                }
            }
            i3 = i5;
            i5 = i3;
        }
        if (this.P != null) {
            this.Q = i5 > 0;
            if (this.Q) {
                if (this.P.getParent() == null) {
                    addViewInLayout(this.P, getChildCount() - 1, this.P.getLayoutParams());
                }
                this.P.measure(MeasureSpec.makeMeasureSpec(i5, RtlSpacingHelper.UNDEFINED), makeMeasureSpec);
                i5 = 0;
            } else {
                a(this.P);
            }
        }
        this.S = i5 < 0;
        boolean z = !this.W && (i4 != 0 || (this.S && measuredWidth != 0));
        this.H = z;
        if (this.H) {
            if (this.I == null) {
                ImageView imageView = new ImageView(getThemedContext());
                imageView.setScaleType(ScaleType.CENTER);
                if (this.a != 0) {
                    imageView.setBackgroundResource(this.a);
                }
                imageView.setImageDrawable(this.f);
                imageView.setOnClickListener(new ak(this));
                imageView.setId(bcx.overflow);
                imageView.setLayoutParams(generateDefaultLayoutParams());
                imageView.setPadding(this.e, 0, this.e, 0);
                imageView.measure(makeMeasureSpec2, makeMeasureSpec);
                if (this.r != null) {
                    imageView.setContentDescription(this.r);
                }
                this.J = new bca(this).a(bcx.overflow);
                this.I = imageView;
            }
            this.I.setVisibility(0);
            this.I.measure(makeMeasureSpec2, makeMeasureSpec);
        } else if (this.I != null) {
            this.I.setVisibility(8);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i4 - i2;
        int i8 = i3 - i;
        int i9 = this.u + this.V;
        if (this.A == null || this.A.getVisibility() == 8) {
            i5 = 0;
        } else {
            i5 = this.A.getMeasuredWidth();
            this.A.layout(0, i9, i5, i7);
        }
        if (this.z == null || this.z.getVisibility() == 8) {
            i6 = i5;
        } else {
            i6 = this.z.getMeasuredWidth();
            this.z.layout(i5, i9, i5 + i6, i7);
            i6 = i5 + i6;
        }
        if (this.G != null) {
            this.G.layout(i6, i9, i8, i7);
            return;
        }
        this.n.clear();
        if (this.I != null) {
            if (this.H) {
                i5 = this.I.getMeasuredWidth();
                if (this.I.getParent() == null) {
                    addViewInLayout(this.I, getChildCount(), this.I.getLayoutParams(), true);
                }
                this.I.layout(i8 - i5, i9, i8, i7);
                i8 -= i5;
            } else {
                a(this.I);
            }
        }
        this.y.clear();
        this.x.clear();
        List list;
        if (this.S) {
            list = this.w;
        } else {
            list = this.v;
        }
        for (bca bca : r0) {
            View c = c(bca);
            if (g(bca)) {
                a(bca, c);
            } else if (bca.s()) {
                b(bca);
            } else {
                a(bca);
            }
        }
        a(i6, i9, i8, i7);
    }

    void a(bca bca) {
        this.x.add(bca);
    }

    void b(bca bca) {
        this.y.add(bca);
    }

    private static boolean g(bca bca) {
        int i = bca.i();
        return (bca.b() == 0 && (i & 2) == 0) || i == 0;
    }

    private void a(View view) {
        if (view.getParent() == this) {
            detachViewFromParent(view);
        }
    }

    private void b(View view) {
        if (view.getParent() == null) {
            attachViewToParent(view, getChildCount() - 1, view.getLayoutParams());
        }
    }

    protected void a(int i, int i2, int i3, int i4) {
        Rect rect = new Rect(i, i2, i3, i4);
        Rect rect2 = new Rect(i, i2, i3, i4);
        setExtraWidth((0 + a(rect, rect2, this.x)) + a(rect, rect2, this.y));
        b(rect.left, rect.top, rect.right, rect.bottom);
    }

    private int a(Rect rect, Rect rect2, List<bca> list) {
        int i = 0;
        for (bca bca : list) {
            int i2;
            View c = c(bca);
            int measuredWidth = c.getMeasuredWidth();
            Object obj = rect.width() < measuredWidth ? 1 : null;
            int i3 = bca.i();
            if (obj != null && (i3 & 2) == 0) {
                a(bca, c);
                i2 = i;
            } else if (bca.h()) {
                if (bca.s()) {
                    rect2.left = rect.left;
                    rect2.right = rect.left + measuredWidth;
                    rect.left = rect2.right;
                } else {
                    rect2.left = rect.right - measuredWidth;
                    rect2.right = rect.right;
                    rect.right = rect2.left;
                }
                b(c);
                c.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
                i2 = i + measuredWidth;
            } else {
                a(c);
                i2 = i;
            }
            i = i2;
        }
        return i;
    }

    void a(bca bca, View view) {
        this.n.add(bca);
        a(view);
    }

    void b(int i, int i2, int i3, int i4) {
        if (this.Q) {
            switch (((LayoutParams) this.P.getLayoutParams()).a) {
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    this.P.layout(i3 - this.P.getMeasuredWidth(), i2, i3, i4);
                default:
                    this.P.layout(i, i2, i3, i4);
            }
        }
    }

    private int getStartIndex() {
        if (this.z == null) {
            return 0;
        }
        return 1;
    }

    void a() {
        if (this.K == null) {
            Context themedContext = getThemedContext();
            DropDownListView dropDownListView = new DropDownListView(themedContext, null, bct.dropDownListViewStyle);
            dropDownListView.setFocusable(true);
            dropDownListView.setFocusableInTouchMode(true);
            dropDownListView.setAdapter(this.j);
            dropDownListView.setOnItemClickListener(new al(this));
            dropDownListView.setSelection(-1);
            dropDownListView.setOnKeyListener(new am(this));
            PopupWindow popupWindow = new PopupWindow(themedContext, null, bct.toolBarPopupWindowStyle);
            popupWindow.setInputMethodMode(2);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setContentView(dropDownListView);
            popupWindow.setFocusable(true);
            this.K = popupWindow;
        }
        this.j.a(this.n);
        PopupWindow popupWindow2 = this.K;
        popupWindow2.setWindowLayoutMode(0, -2);
        setContentWidth(Math.max(this.i, Math.min(a(this.j), this.h)));
        int i = -this.I.getHeight();
        if (popupWindow2.isShowing()) {
            popupWindow2.update(this.I, this.m, i, this.L, 0);
        } else {
            popupWindow2.setWidth(this.L);
            popupWindow2.showAsDropDown(this.I, this.m, i);
        }
        if (this.s != null) {
            this.s.a(this.J);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    public void setOnToolBarItemSelectedListener(x xVar) {
        this.s = xVar;
    }

    public void b() {
        this.t.clear();
        this.v.clear();
        this.w.clear();
        requestLayout();
    }

    public void a(Collection<bca> collection) {
        if (!collection.isEmpty()) {
            int childCount = getChildCount();
            int i = childCount;
            for (bca bca : collection) {
                int a = bca.a();
                if (this.t.containsKey(Integer.valueOf(a))) {
                    childCount = i;
                } else {
                    int i2 = bca.i();
                    boolean z = (i2 & 2) != 0;
                    Context themedContext = getThemedContext();
                    ToolBarItemView toolBarItemView = new ToolBarItemView(themedContext);
                    if (this.l != 0) {
                        toolBarItemView.a(themedContext, this.l);
                    }
                    toolBarItemView.setId(a);
                    toolBarItemView.setImageResource(bca.b());
                    toolBarItemView.setLabel(bca.j());
                    if ((i2 & 4) != 0 || (bca.b() == 0 && z)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    toolBarItemView.setWithText(z);
                    toolBarItemView.setEnabled(bca.l());
                    if (this.a != 0) {
                        toolBarItemView.setBackgroundResource(this.a);
                    }
                    toolBarItemView.setOnClickListener(new an(this, bca));
                    toolBarItemView.setOnLongClickListener(new ao(this, bca));
                    bca.a(toolBarItemView);
                    int i3 = i + 1;
                    addViewInLayout(c(bca), i, generateDefaultLayoutParams(), true);
                    this.t.put(Integer.valueOf(a), bca);
                    childCount = i3;
                }
                i = childCount;
            }
            Collection values = this.t.values();
            this.v = a(values, this.o);
            this.w = a(values, this.o);
            Collections.sort(this.w, this.q);
            Collections.sort(this.w, this.p);
            requestLayout();
        }
    }

    View c(bca bca) {
        if (bca.i() != 2 || bca.d() == null) {
            return bca.c();
        }
        return bca.d();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List<defpackage.bca> a(java.util.Collection<defpackage.bca> r10, com.twitter.internal.android.widget.ar r11) {
        /*
        r3 = 0;
        r9 = -1;
        r4 = new java.util.ArrayList;
        r0 = r10.size();
        r4.<init>(r0);
        r0 = new java.util.ArrayList;
        r0.<init>(r10);
        java.util.Collections.sort(r0, r11);
        r5 = r0.iterator();
        r6 = r10.iterator();
        r0 = 0;
        r1 = r0;
    L_0x001d:
        r0 = r5.hasNext();
        if (r0 == 0) goto L_0x005f;
    L_0x0023:
        r0 = r5.next();
        r0 = (defpackage.bca) r0;
        r7 = r0.q();
        if (r1 == 0) goto L_0x0056;
    L_0x002f:
        r1 = r1.q();
    L_0x0033:
        if (r7 == r9) goto L_0x0062;
    L_0x0035:
        r1 = r7 - r1;
        r2 = r1 + -1;
    L_0x0039:
        if (r2 > 0) goto L_0x003d;
    L_0x003b:
        if (r7 != r9) goto L_0x0058;
    L_0x003d:
        r1 = r6.hasNext();
        if (r1 == 0) goto L_0x0058;
    L_0x0043:
        r1 = r6.next();
        r1 = (defpackage.bca) r1;
        r8 = r1.q();
        if (r8 != r9) goto L_0x0060;
    L_0x004f:
        r4.add(r1);
        r1 = r2 + -1;
    L_0x0054:
        r2 = r1;
        goto L_0x0039;
    L_0x0056:
        r1 = r3;
        goto L_0x0033;
    L_0x0058:
        if (r7 == r9) goto L_0x005d;
    L_0x005a:
        r4.add(r0);
    L_0x005d:
        r1 = r0;
        goto L_0x001d;
    L_0x005f:
        return r4;
    L_0x0060:
        r1 = r2;
        goto L_0x0054;
    L_0x0062:
        r2 = r3;
        goto L_0x0039;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.internal.android.widget.ToolBar.a(java.util.Collection, com.twitter.internal.android.widget.ar):java.util.List<bca>");
    }

    public bca a(int i) {
        return (bca) this.t.get(Integer.valueOf(i));
    }

    public boolean c() {
        for (bca h : this.t.values()) {
            if (h.h()) {
                return true;
            }
        }
        return false;
    }

    public boolean d(bca bca) {
        if (this.G == null) {
            return false;
        }
        if (this.G != bca.d()) {
            return false;
        }
        removeView(this.G);
        int childCount = getChildCount();
        for (int startIndex = getStartIndex(); startIndex < childCount; startIndex++) {
            View childAt = getChildAt(startIndex);
            bca bca2 = (bca) this.t.get(Integer.valueOf(childAt.getId()));
            if (bca2 == null || bca2.h()) {
                childAt.setVisibility(0);
            }
        }
        this.G = null;
        bca.a(false);
        if (this.z != null) {
            if (this.D) {
                this.z.setVisibility(this.F);
            } else {
                this.z.d(false);
                if (!this.C) {
                    this.z.setPadding(this.T, this.z.getPaddingTop(), this.U, this.z.getPaddingBottom());
                }
                this.z.a(this.C);
            }
        }
        requestLayout();
        return true;
    }

    public boolean e(bca bca) {
        if (this.G != null) {
            return false;
        }
        this.G = bca.d();
        int childCount = getChildCount();
        for (int startIndex = getStartIndex(); startIndex < childCount; startIndex++) {
            getChildAt(startIndex).setVisibility(8);
        }
        addView(this.G);
        bca.a(true);
        if (this.z != null) {
            if (this.D) {
                this.F = this.z.getVisibility();
                this.z.setVisibility(8);
            } else {
                this.z.d(true);
                if (!this.C) {
                    this.z.setPadding(0, 0, 0, 0);
                }
                this.z.a(true);
            }
        }
        requestLayout();
        return true;
    }

    public void setContentWidth(int i) {
        Drawable background = this.K.getBackground();
        if (background != null) {
            background.getPadding(this.M);
            this.L = (this.M.left + this.M.right) + i;
            return;
        }
        this.L = i;
    }

    private int a(ListAdapter listAdapter) {
        if (listAdapter.isEmpty()) {
            return 0;
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        if (this.O == null) {
            this.O = new FrameLayout(getThemedContext());
        }
        int i = 0;
        int i2 = 0;
        View view = null;
        int i3 = 0;
        while (i < count) {
            View view2;
            int itemViewType = listAdapter.getItemViewType(i);
            if (itemViewType != i2) {
                view2 = null;
            } else {
                itemViewType = i2;
                view2 = view;
            }
            view = listAdapter.getView(i, view2, this.O);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i3 = Math.max(i3, (view.getMeasuredWidth() + view.getPaddingLeft()) + view.getPaddingRight());
            i++;
            i2 = itemViewType;
        }
        return i3;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getThemedContext(), attributeSet);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public void setCustomView(View view) {
        a(view, null);
    }

    public void a(View view, LayoutParams layoutParams) {
        boolean z = this.P != null;
        if (z) {
            if (this.P.getParent() == this) {
                removeView(this.P);
            } else {
                removeDetachedView(this.P, false);
            }
            this.P = null;
        }
        if (view != null) {
            if (layoutParams != null) {
                view.setLayoutParams(layoutParams);
            } else {
                view.setLayoutParams(new LayoutParams(-1, -1));
            }
        }
        this.P = view;
        this.Q = false;
        if (z || this.P != null) {
            requestLayout();
            invalidate();
        }
    }

    public void d() {
        setVisibility(0);
    }

    public void e() {
        setVisibility(8);
    }

    public void setDisplayOptions(int i) {
        this.R = i;
        l();
    }

    public int getDisplayOptions() {
        return this.R;
    }

    public void b(int i) {
        this.R |= i;
        l();
    }

    public void c(int i) {
        this.R &= i ^ -1;
        l();
    }

    private void l() {
        boolean z;
        boolean z2 = true;
        int i = this.R;
        setDisplayShowHomeAsUpEnabled((i & 4) != 0);
        if ((i & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        setDisplayHomeEnabled(z);
        if ((i & 8) != 0) {
            z = true;
        } else {
            z = false;
        }
        setDisplayShowTitleEnabled(z);
        if ((i & 16) != 0) {
            z = true;
        } else {
            z = false;
        }
        setDisplayFullExpandEnabled(z);
        if ((i & 32) != 0) {
            z = true;
        } else {
            z = false;
        }
        setDisplayHomeClickable(z);
        if ((i & 64) != 0) {
            z = true;
        } else {
            z = false;
        }
        setDisplayHideOverflow(z);
        if ((i & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0) {
            z2 = false;
        }
        setDisplayDrawerIcon(z2);
    }

    public boolean f() {
        return this.K != null && this.K.isShowing();
    }

    public boolean g() {
        if (!this.H) {
            return false;
        }
        a();
        return true;
    }

    public boolean h() {
        if (this.K == null) {
            return false;
        }
        this.K.dismiss();
        return true;
    }

    public void f(bca bca) {
        if (this.G == null) {
            View c = c(bca);
            if (c == null) {
                return;
            }
            if (bca.h()) {
                c.setVisibility(0);
            } else {
                c.setVisibility(8);
            }
        }
    }

    public void i() {
        if (this.K != null && this.K.isShowing()) {
            this.j.notifyDataSetChanged();
        }
    }
}
