package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import bcx;
import defpackage.bct;
import defpackage.bdd;

/* compiled from: Twttr */
public class PageableListView extends ListView implements OnScrollListener {
    private final int a;
    private final int b;
    private final int c;
    private final boolean d;
    private View e;
    private TextView f;
    private x g;
    private FrameLayout h;
    private View i;
    private View j;
    private ExploreByTouchHelper k;

    public PageableListView(Context context) {
        this(context, null);
    }

    public PageableListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.pageableListViewStyle);
    }

    public PageableListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.PageableListView, i, 0);
        this.a = obtainStyledAttributes.getResourceId(bdd.PageableListView_loadingFooterLayout, 0);
        this.b = obtainStyledAttributes.getResourceId(bdd.PageableListView_loadingHeaderLayout, 0);
        this.c = obtainStyledAttributes.getInt(bdd.PageableListView_defaultPosition, 0);
        this.d = obtainStyledAttributes.getBoolean(bdd.PageableListView_loadingHeaderDivider, true);
        obtainStyledAttributes.recycle();
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
    }

    public void setOnPageScrollListener(x xVar) {
        this.g = xVar;
        if (xVar != null) {
            super.setOnScrollListener(this);
        } else {
            super.setOnScrollListener(null);
        }
    }

    private void c() {
        if (getAdapter() != null) {
            throw new IllegalStateException("This method must be called before setAdapter.");
        }
    }

    public void a() {
        c();
        if (this.j == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.b, this, false);
            addHeaderView(inflate, null, false);
            this.j = inflate;
            this.e = inflate.findViewById(bcx.header_content);
            if (this.e == null) {
                throw new IllegalArgumentException("loadingHeaderLayout must define a View with @id/header_content.");
            } else if (!this.d) {
                inflate = inflate.findViewById(bcx.divider);
                if (inflate != null) {
                    inflate.setVisibility(8);
                }
            }
        }
    }

    public int getLoadingHeaderHeight() {
        return this.j != null ? this.j.getHeight() : 0;
    }

    public void b() {
        if (this.i == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.a, this, false);
            a(inflate);
            this.i = inflate;
            inflate.findViewById(bcx.footer_progress_bar).setVisibility(0);
            this.f = (TextView) inflate.findViewById(bcx.footer_label);
        }
    }

    public void a(View view) {
        d();
        this.h.addView(view);
    }

    public void setFooterContainerOnClickListener(OnClickListener onClickListener) {
        d();
        this.h.setOnClickListener(onClickListener);
    }

    private void d() {
        if (this.h == null) {
            c();
            this.h = new FrameLayout(getContext());
            addFooterView(this.h, null, false);
            setFooterDividersEnabled(false);
        }
    }

    public void a(boolean z) {
        if (this.j != null) {
            if (z) {
                this.e.setVisibility(0);
            } else {
                this.e.setVisibility(8);
            }
        }
    }

    public void b(boolean z) {
        if (this.i != null) {
            if (z) {
                this.i.setVisibility(0);
                if (this.f != null) {
                    this.f.setVisibility(8);
                    return;
                }
                return;
            }
            this.i.setVisibility(8);
            if (this.f != null) {
                this.f.setVisibility(0);
            }
        }
    }

    public void setExploreByTouchHelper(ExploreByTouchHelper exploreByTouchHelper) {
        this.k = exploreByTouchHelper;
        ViewCompat.setAccessibilityDelegate(this, exploreByTouchHelper);
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (this.g != null) {
            this.g.onScrollStateChanged(this, i);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (this.g != null && i2 != 0 && getCount() != 0) {
            int i4 = i + i2;
            if (!(this.j == null || this.j.getParent() == null || i4 < getPositionForView(this.j))) {
                this.g.a(this);
            }
            if (!(this.h == null || this.h.getParent() == null || i4 < getPositionForView(this.h))) {
                this.g.b(this);
            }
            this.g.onScroll(this, i, i2, i3);
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (1 == this.c) {
            setSelection(getCount() - 1);
        }
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.k == null || !this.k.dispatchHoverEvent(motionEvent)) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return true;
    }
}
