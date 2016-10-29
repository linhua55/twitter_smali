package com.twitter.refresh.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView.LayoutParams;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ListView.FixedViewInfo;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import bbl;
import bbn;
import defpackage.cpy;
import defpackage.cpz;
import defpackage.cqa;
import java.util.ArrayList;
import java.util.Iterator;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class RefreshableListView extends ListView implements i {
    private final String A;
    private final String B;
    private int C;
    private boolean D;
    private boolean E;
    private final ArrayList<FixedViewInfo> F;
    private final ArrayList<FixedViewInfo> G;
    private int H;
    private j I;
    private final g a;
    private final Animation b;
    private final Animation c;
    private final ProgressBar d;
    private final ImageView e;
    private final TextView f;
    private final View g;
    final Scroller h;
    final RelativeLayout i;
    int j;
    private boolean k;
    private View l;
    private TextView m;
    private final int n;
    private final boolean o;
    private e p;
    private c q;
    private d r;
    private h s;
    private final int t;
    private int u;
    private int v;
    private final int w;
    private int x;
    private int y;
    private final String z;

    /* compiled from: Twttr */
    class NullRefreshViewReferenceException extends IllegalStateException {
        private NullRefreshViewReferenceException() {
        }
    }

    /* compiled from: Twttr */
    class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        public boolean a;
        public boolean b;
        public int c;

        static {
            CREATOR = new f();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel) {
            boolean z;
            boolean z2 = true;
            super(parcel);
            if (parcel.readInt() == 1) {
                z = true;
            } else {
                z = false;
            }
            this.a = z;
            if (parcel.readInt() != 1) {
                z2 = false;
            }
            this.b = z2;
            this.c = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2;
            int i3 = 1;
            super.writeToParcel(parcel, i);
            if (this.a) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            parcel.writeInt(i2);
            if (!this.b) {
                i3 = 0;
            }
            parcel.writeInt(i3);
            parcel.writeInt(this.c);
        }
    }

    public RefreshableListView(Context context) {
        this(context, null);
    }

    public RefreshableListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cpy.refreshableListViewStyle);
    }

    public RefreshableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.y = 0;
        this.F = new ArrayList();
        this.G = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cqa.RefreshableListView, i, 0);
        this.t = obtainStyledAttributes.getColor(cqa.RefreshableListView_pullBackgroundColor, -1);
        int resourceId = obtainStyledAttributes.getResourceId(cqa.RefreshableListView_pullDivider, 0);
        this.h = new Scroller(context);
        this.a = new g(this);
        this.b = AnimationUtils.loadAnimation(context, obtainStyledAttributes.getResourceId(cqa.RefreshableListView_rotateUpAnim, 0));
        this.c = AnimationUtils.loadAnimation(context, obtainStyledAttributes.getResourceId(cqa.RefreshableListView_rotateDownAnim, 0));
        RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(context).inflate(obtainStyledAttributes.getResourceId(cqa.RefreshableListView_refreshHeader, 0), this, false);
        if (resourceId != 0) {
            View findViewById = relativeLayout.findViewById(cpz.refresh_divider);
            findViewById.setBackgroundResource(resourceId);
            findViewById.setVisibility(0);
        }
        this.d = (ProgressBar) relativeLayout.findViewById(cpz.refresh_loading);
        this.e = (ImageView) relativeLayout.findViewById(cpz.refresh_icon);
        this.f = (TextView) relativeLayout.findViewById(cpz.refresh_text);
        this.i = relativeLayout;
        this.g = new View(context);
        this.g.setLayoutParams(new LayoutParams(-1, 0, -1));
        this.w = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
        relativeLayout.setLayoutParams(new LayoutParams(layoutParams.width, layoutParams.height, -1));
        this.n = obtainStyledAttributes.getResourceId(cqa.RefreshableListView_refreshFooter, 0);
        this.z = obtainStyledAttributes.getString(cqa.RefreshableListView_loadingText);
        this.A = obtainStyledAttributes.getString(cqa.RefreshableListView_pullText);
        this.B = obtainStyledAttributes.getString(cqa.RefreshableListView_releaseText);
        this.H = obtainStyledAttributes.getInt(cqa.RefreshableListView_pullHeaderPosition, -1);
        this.k = obtainStyledAttributes.getBoolean(cqa.RefreshableListView_pullAfterHeaders, false);
        this.o = obtainStyledAttributes.getBoolean(cqa.RefreshableListView_enablePullToRefresh, true);
        obtainStyledAttributes.recycle();
    }

    void setRefreshHeaderVisible(boolean z) {
        if (this.E != z) {
            this.E = z;
            if (this.s != null) {
                this.s.a(z);
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        h();
        this.x = i;
        super.onMeasure(i, i2);
    }

    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (c() && !this.D && z && getSelectedItemPosition() < 0 && !isInTouchMode() && this.p != null) {
            h();
        }
        super.onFocusChanged(z, i, rect);
    }

    protected void onAttachedToWindow() {
        if (c() && this.p != null) {
            this.p.b();
            h();
        }
        this.D = true;
        super.onAttachedToWindow();
    }

    protected void onDetachedFromWindow() {
        if (c()) {
            if (this.p != null) {
                this.p.c();
            }
            removeCallbacks(this.a);
        }
        this.D = false;
        super.onDetachedFromWindow();
    }

    protected void layoutChildren() {
        if (!c()) {
            super.layoutChildren();
        } else if (!c(12)) {
            if (this.j == 0) {
                a(this.F);
                a(this.G);
            }
            super.layoutChildren();
        }
    }

    private void a(ArrayList<FixedViewInfo> arrayList) {
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                FixedViewInfo fixedViewInfo = (FixedViewInfo) it.next();
                LayoutParams layoutParams = (LayoutParams) fixedViewInfo.view.getLayoutParams();
                if (layoutParams != null) {
                    fixedViewInfo.view.setLayoutParams(new LayoutParams(layoutParams.width, layoutParams.height, -2));
                }
            }
        }
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (!c() || view != this.i) {
            return super.drawChild(canvas, view, j);
        }
        int refreshHeaderPosition = getRefreshHeaderPosition() - getFirstVisiblePosition();
        if (refreshHeaderPosition > 0) {
            refreshHeaderPosition = getChildAt(refreshHeaderPosition - 1).getBottom();
        } else {
            refreshHeaderPosition = getScrollY();
        }
        int scrollX = getScrollX();
        int save = canvas.save();
        canvas.clipRect(scrollX, refreshHeaderPosition, getWidth() + scrollX, view.getBottom());
        canvas.drawColor(this.t);
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (!c() || !this.o) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int y = (int) motionEvent.getY();
        int i2 = y - this.u;
        switch (motionEvent.getAction()) {
            case p.View_android_theme /*0*/:
                this.u = y;
                this.v = Integer.MIN_VALUE;
                break;
            case p.View_paddingStart /*2*/:
                this.v = y;
                if (!c(32) && getFirstVisiblePosition() == 0) {
                    y = getFirstVisiblePosition();
                    int refreshHeaderPosition = getRefreshHeaderPosition() - y;
                    if (y == 0 && refreshHeaderPosition >= 0 && refreshHeaderPosition < getChildCount()) {
                        View childAt = getChildAt(refreshHeaderPosition + 1);
                        int top = childAt != null ? childAt.getTop() : 0;
                        if (refreshHeaderPosition > 0) {
                            childAt = getChildAt(0);
                            if (childAt != null && childAt.getTop() >= getListPaddingTop()) {
                                i = 1;
                            }
                            y = getChildAt(refreshHeaderPosition - 1).getBottom();
                        } else {
                            y = getListPaddingTop();
                            i = 1;
                        }
                        if (i != 0 && top >= r2 && i2 > this.w) {
                            return true;
                        }
                    }
                }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    public int getRefreshHeaderPosition() {
        if (!c() || !this.o) {
            return 0;
        }
        int size = this.F.size();
        if (this.H != -1 && this.H < size + 1 && this.H < this.j) {
            return this.H;
        }
        if (!this.k || size >= this.j) {
            return 0;
        }
        return size;
    }

    public void setRefreshHeaderPosition(int i) {
        if (!c() || !this.o || i == this.H) {
            return;
        }
        if (i >= getHeaderViewsCount() || i < -1) {
            throw new IllegalArgumentException("Invalid position " + i);
        }
        this.H = i;
        if (this.q != null) {
            this.q.onChanged();
        }
    }

    public void setPullAfterHeadersEnabled(boolean z) {
        if (c() && this.o && z != this.k) {
            this.k = z;
            if (this.q != null) {
                this.q.onChanged();
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!c() || !this.o) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction() & 255;
        if (c(8)) {
            return false;
        }
        int y = (int) motionEvent.getY();
        int i = y - this.u;
        switch (action) {
            case p.View_android_theme /*0*/:
                this.u = y;
                this.v = Integer.MIN_VALUE;
                setMode(64);
                break;
            case p.View_android_focusable /*1*/:
            case p.View_paddingEnd /*3*/:
                b(20);
                if (!c(32) && c(2) && getFirstVisiblePosition() == 0) {
                    i = getRefreshHeaderPosition();
                    if (i > 0) {
                        action = getChildAt(i - 1).getBottom();
                    } else {
                        action = getListPaddingTop();
                    }
                    View childAt = getChildAt(i);
                    if (childAt != null) {
                        int top = childAt.getTop();
                        i = childAt.getBottom();
                        if (top <= action) {
                            if (i <= action) {
                                f();
                                break;
                            }
                            this.r.a(false);
                            a(i - action);
                            break;
                        }
                        this.r.a(true);
                        a(top - action);
                        break;
                    }
                }
                break;
            case p.View_paddingStart /*2*/:
                if (!c(32)) {
                    boolean z;
                    if (this.v != Integer.MIN_VALUE) {
                        action = y - this.v;
                    } else {
                        action = i;
                    }
                    if (y >= this.v) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.v = y;
                    y = getFirstVisiblePosition();
                    int refreshHeaderPosition = getRefreshHeaderPosition() - y;
                    if (y == 0 && refreshHeaderPosition >= 0 && refreshHeaderPosition < getChildCount()) {
                        int top2;
                        boolean z2;
                        int bottom;
                        View childAt2 = getChildAt(refreshHeaderPosition + 1);
                        if (childAt2 != null) {
                            top2 = childAt2.getTop();
                        } else {
                            top2 = 0;
                        }
                        if (refreshHeaderPosition > 0) {
                            childAt2 = getChildAt(0);
                            if (childAt2 == null || childAt2.getTop() < getListPaddingTop()) {
                                z2 = false;
                            } else {
                                z2 = true;
                            }
                            bottom = getChildAt(refreshHeaderPosition - 1).getBottom();
                        } else {
                            bottom = getListPaddingTop();
                            z2 = true;
                        }
                        if (z2 && top2 >= bottom && i > this.w) {
                            requestDisallowInterceptTouchEvent(true);
                            if (c(64)) {
                                super.onTouchEvent(motionEvent);
                                b(64);
                            }
                            setChildrenDrawingCacheEnabled(false);
                            setChildrenDrawnWithCacheEnabled(false);
                            if (c(2)) {
                                b(refreshHeaderPosition, (int) (((float) action) * 0.5f));
                                invalidate();
                                if (getChildAt(refreshHeaderPosition).getTop() >= bottom) {
                                    if (z && !c(16)) {
                                        setMode(16);
                                        this.f.setText(this.B);
                                        this.e.startAnimation(this.b);
                                        this.r.a();
                                    }
                                } else if (!z && c(16)) {
                                    b(16);
                                    this.f.setText(this.A);
                                    this.e.startAnimation(this.c);
                                    this.r.b();
                                }
                            } else {
                                c(refreshHeaderPosition, top2 - getDividerHeight());
                            }
                            setMode(4);
                            return true;
                        }
                    }
                    f();
                    break;
                }
                this.v = y;
                break;
                break;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void a() {
        if (c() && this.o) {
            this.e.clearAnimation();
            setMode(32);
            if (!c(2)) {
                this.q.onChanged();
            }
            b(true);
            setRefreshHeaderVisible(true);
        }
    }

    private void b(boolean z) {
        int i;
        int i2 = 0;
        ImageView imageView = this.e;
        if (z) {
            i = 4;
        } else {
            i = 0;
        }
        imageView.setVisibility(i);
        ProgressBar progressBar = this.d;
        if (!z) {
            i2 = 4;
        }
        progressBar.setVisibility(i2);
        this.f.setText(z ? this.z : this.A);
    }

    public boolean b() {
        return c(32);
    }

    public boolean a(boolean z) {
        if (!c(32)) {
            return false;
        }
        b(32);
        if (z && getFirstVisiblePosition() == 0 && isInTouchMode()) {
            int listPaddingTop;
            int refreshHeaderPosition = getRefreshHeaderPosition();
            if (refreshHeaderPosition <= 0 || getChildAt(refreshHeaderPosition - 1) == null) {
                listPaddingTop = getListPaddingTop();
            } else {
                listPaddingTop = getChildAt(refreshHeaderPosition - 1).getBottom();
            }
            View childAt = getChildAt(refreshHeaderPosition);
            if (childAt != null) {
                a(childAt.getBottom() - listPaddingTop);
                return true;
            }
            bbl bbl = new bbl(new NullRefreshViewReferenceException());
            bbl.a("headerIsModeAttached", Boolean.valueOf(c(2)));
            bbl.a("refreshViewPosition", Integer.valueOf(refreshHeaderPosition));
            bbl.a("headerCount", Integer.valueOf(getHeaderViewsCount()));
            bbl.a("childCount", Integer.valueOf(getChildCount()));
            bbl.a("itemCount", Integer.valueOf(this.j));
            bbn.a(bbl);
            setRefreshHeaderVisible(false);
            f();
            return false;
        }
        if (c(2)) {
            f();
        } else {
            this.q.onChanged();
        }
        setRefreshHeaderVisible(false);
        return false;
    }

    private void a(int i) {
        if (i > 0) {
            this.a.a(i);
        }
    }

    void b(int i, int i2) {
        int childCount = getChildCount();
        while (i < childCount) {
            getChildAt(i).offsetTopAndBottom(i2);
            i++;
        }
    }

    public final void setRefreshListener(d dVar) {
        if (c() || getHeaderViewsCount() <= 0) {
            this.r = dVar;
            return;
        }
        throw new IllegalStateException("setRefreshListener must be called before addHeaderView.");
    }

    public final void setVisibilityListener(h hVar) {
        this.s = hVar;
    }

    public void setAdapter(ListAdapter listAdapter) {
        if (c()) {
            if (listAdapter != null) {
                if (this.p == null || !this.p.getWrappedAdapter().equals(listAdapter)) {
                    this.q = new c(this);
                    if (c() && this.l == null) {
                        View inflate = LayoutInflater.from(getContext()).inflate(this.n, null);
                        addFooterView(inflate, null, false);
                        this.l = inflate.findViewById(cpz.footer_content);
                        this.m = (TextView) inflate.findViewById(cpz.footer_dot);
                    }
                    this.p = new e(this, this.F, this.G, listAdapter, this.q);
                }
                this.j = (this.o ? 1 : 0) + this.p.a();
            } else {
                this.p = null;
                this.j = 0;
            }
            super.setAdapter(this.p);
            return;
        }
        super.setAdapter(listAdapter);
    }

    protected boolean c() {
        return this.r != null;
    }

    public void addHeaderView(View view, Object obj, boolean z) {
        a(this.F.size(), view, obj, z);
    }

    public void a(int i, View view, Object obj, boolean z) {
        if (c() && this.o) {
            FixedViewInfo fixedViewInfo = new FixedViewInfo(this);
            fixedViewInfo.view = view;
            fixedViewInfo.data = obj;
            fixedViewInfo.isSelectable = z;
            this.F.add(i, fixedViewInfo);
            return;
        }
        super.addHeaderView(view, obj, z);
    }

    public int getHeaderViewsCount() {
        if (c() && this.o) {
            return this.F.size() + 1;
        }
        return super.getHeaderViewsCount();
    }

    public void addFooterView(View view, Object obj, boolean z) {
        if (c()) {
            FixedViewInfo fixedViewInfo = new FixedViewInfo(this);
            fixedViewInfo.view = view;
            fixedViewInfo.data = obj;
            fixedViewInfo.isSelectable = z;
            this.G.add(fixedViewInfo);
            return;
        }
        super.addFooterView(view, obj, z);
    }

    public int getFooterViewsCount() {
        if (c()) {
            return this.G.size();
        }
        return super.getFooterViewsCount();
    }

    protected int computeVerticalScrollOffset() {
        if (!isSmoothScrollbarEnabled() || !c(2)) {
            return super.computeVerticalScrollOffset();
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int childCount = getChildCount();
        int i = this.j - (this.o ? 1 : 0);
        if (i <= 0 || firstVisiblePosition < 1 || childCount <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        childCount = childAt.getTop();
        int height = childAt.getHeight();
        if (height <= 0) {
            return 0;
        }
        return Math.max(((int) ((((float) i) * (((float) getScrollY()) / ((float) getHeight()))) * 100.0f)) + (((firstVisiblePosition - 1) * 100) - ((childCount * 100) / height)), 0);
    }

    protected int computeVerticalScrollRange() {
        if (!isSmoothScrollbarEnabled() || !c(2)) {
            return super.computeVerticalScrollRange();
        }
        int i = this.j - (this.o ? 1 : 0);
        int scrollY = getScrollY();
        int max = Math.max(i * 100, 0);
        if (scrollY != 0) {
            return max + Math.abs((int) (((((float) scrollY) / ((float) getHeight())) * ((float) i)) * 100.0f));
        }
        return max;
    }

    public void d() {
        this.l.setVisibility(0);
        this.m.setVisibility(8);
    }

    public void e() {
        this.l.setVisibility(8);
        this.m.setVisibility(0);
    }

    void setMode(int i) {
        this.C |= i;
    }

    void b(int i) {
        this.C &= i ^ -1;
    }

    boolean c(int i) {
        return (this.C & i) != 0;
    }

    void c(int i, int i2) {
        int childMeasureSpec;
        int i3;
        View view = this.i;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        boolean c = c(1);
        if (c) {
            attachViewToParent(view, i, layoutParams);
        } else {
            addViewInLayout(view, i, layoutParams, true);
            setMode(1);
        }
        setMode(2);
        if (!c || view.isLayoutRequested()) {
            c = true;
        } else {
            c = false;
        }
        if (c) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(this.x, getListPaddingLeft() + getListPaddingRight(), layoutParams.width);
            i3 = layoutParams.height;
            if (i3 > 0) {
                i3 = MeasureSpec.makeMeasureSpec(i3, 1073741824);
            } else {
                i3 = MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(childMeasureSpec, i3);
        } else {
            cleanupLayoutState(view);
        }
        i3 = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        childMeasureSpec = i2 - measuredHeight;
        int listPaddingLeft = getListPaddingLeft();
        if (c) {
            view.layout(listPaddingLeft, childMeasureSpec, i3 + listPaddingLeft, childMeasureSpec + measuredHeight);
        } else {
            view.offsetLeftAndRight(listPaddingLeft - view.getLeft());
            view.offsetTopAndBottom(childMeasureSpec - view.getTop());
        }
        this.q.onChanged();
        if (this.s != null) {
            this.s.b();
        }
        if (!c(32)) {
            b(false);
        }
    }

    void f() {
        if (c(2)) {
            if (this == this.i.getParent()) {
                detachViewFromParent(this.i);
            }
            b(94);
            this.q.onChanged();
            if (this.s != null) {
                this.s.a();
            }
        }
    }

    protected void detachViewsFromParent(int i, int i2) {
        if (!c(4)) {
            super.detachViewsFromParent(i, i2);
        }
    }

    public void setTopPosition(int i) {
        this.y = i;
    }

    @TargetApi(8)
    public boolean g() {
        int i = this.y;
        if (VERSION.SDK_INT > 7) {
            int firstVisiblePosition = getFirstVisiblePosition();
            if (firstVisiblePosition == -1) {
                return false;
            }
            if (firstVisiblePosition > 15) {
                setSelectionFromTop(i, getListPaddingTop());
            }
            smoothScrollToPosition(i);
            return true;
        }
        setSelection(i);
        return true;
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = c();
        savedState.b = c(32);
        savedState.c = this.H;
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.H = savedState.c;
        if (savedState.a && savedState.b) {
            setMode(32);
        }
    }

    void h() {
        if (c() && this.p != null) {
            this.j = (this.o ? 1 : 0) + this.p.a();
        }
    }

    protected View findViewTraversal(int i) {
        View findViewTraversal = super.findViewTraversal(i);
        if (findViewTraversal == null) {
            findViewTraversal = a(this.F, i);
        }
        if (findViewTraversal != null) {
            return findViewTraversal;
        }
        return a(this.G, i);
    }

    View a(ArrayList<FixedViewInfo> arrayList, int i) {
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                View findViewById = ((FixedViewInfo) arrayList.get(i2)).view.findViewById(i);
                if (findViewById != null) {
                    return findViewById;
                }
            }
        }
        return null;
    }

    protected View findViewWithTagTraversal(Object obj) {
        View findViewWithTagTraversal = super.findViewWithTagTraversal(obj);
        if (findViewWithTagTraversal == null) {
            findViewWithTagTraversal = a(this.F, obj);
        }
        if (findViewWithTagTraversal != null) {
            return findViewWithTagTraversal;
        }
        return a(this.G, obj);
    }

    View a(ArrayList<FixedViewInfo> arrayList, Object obj) {
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View findViewWithTag = ((FixedViewInfo) arrayList.get(i)).view.findViewWithTag(obj);
                if (findViewWithTag != null) {
                    return findViewWithTag;
                }
            }
        }
        return null;
    }

    public void setViewLayoutListener(j jVar) {
        this.I = jVar;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.I != null) {
            this.I.a();
        }
        super.onLayout(z, i, i2, i3, i4);
        if (this.I != null) {
            this.I.b();
        }
    }
}
