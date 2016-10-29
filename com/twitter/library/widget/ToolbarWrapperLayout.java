package com.twitter.library.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.IdRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import bct;
import bcw;
import bdd;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
public class ToolbarWrapperLayout extends ViewGroup {
    @IdRes
    private final int a;
    private final int b;
    private final View c;
    private View d;
    private View e;
    private boolean f;
    private boolean g;

    private ToolbarWrapperLayout(Context context) {
        this(context, null);
    }

    public ToolbarWrapperLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.toolbarWrapperLayoutStyle);
    }

    public ToolbarWrapperLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = true;
        this.g = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ToolbarWrapperLayout, i, 0);
        this.a = obtainStyledAttributes.getResourceId(bdd.ToolbarWrapperLayout_toolBarId, 0);
        if (this.a == 0) {
            throw new IllegalArgumentException("toolBarId must be nonzero");
        }
        this.b = obtainStyledAttributes.getDimensionPixelSize(bdd.ToolbarWrapperLayout_manualToolbarElevation, 0);
        boolean z = obtainStyledAttributes.getBoolean(bdd.ToolbarWrapperLayout_shouldDrawManualShadow, false);
        this.g = obtainStyledAttributes.getBoolean(bdd.ToolbarWrapperLayout_relayoutToolbar, true);
        obtainStyledAttributes.recycle();
        if (z) {
            Drawable drawable = getResources().getDrawable(bcw.drop_shadow);
            this.c = new View(getContext());
            this.c.setLayoutParams(new LayoutParams(-1, this.b));
            this.c.setBackground(drawable);
            return;
        }
        this.c = null;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() != 1) {
            throw new IllegalStateException("ToolbarWrapperLayout must have exactly one child.");
        }
        this.d = getChildAt(0);
        this.e = findViewById(this.a);
        if (this.e == null) {
            throw new IllegalStateException("ToolbarWrapperLayout must contain a ToolBar specified by a toolBarId XML attribute.");
        }
        if (this.g) {
            r.c(this.e);
            addView(this.e);
        }
        if (this.c != null) {
            ((ViewGroup) this.e.getParent()).addView(this.c);
        }
        this.f = false;
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        if (this.f) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Can't add child views after inflation.");
    }

    protected void onMeasure(int i, int i2) {
        int i3 = 0;
        if (this.g) {
            int i4;
            int i5;
            int i6;
            if (this.e == null || this.e.getVisibility() == 8) {
                i4 = 0;
                i5 = 0;
                i6 = 0;
            } else {
                measureChild(this.e, i, i2);
                i5 = this.e.getMeasuredWidth();
                i4 = this.e.getMeasuredHeight();
                i5 = Math.max(0, i5);
                i6 = combineMeasuredStates(0, this.e.getMeasuredState());
            }
            if (!(this.d == null || this.d.getVisibility() == 8)) {
                measureChild(this.d, i, MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i2) - i4, MeasureSpec.getMode(i2)));
                int measuredWidth = this.d.getMeasuredWidth();
                i3 = this.d.getMeasuredHeight();
                i6 = combineMeasuredStates(i6, this.d.getMeasuredState());
                i5 = Math.max(i5, measuredWidth);
            }
            setMeasuredDimension(resolveSizeAndState(Math.max(i5, getSuggestedMinimumWidth()), i, i6), resolveSizeAndState(Math.max(i4 + i3, getSuggestedMinimumHeight()), i2, i6 << 16));
            return;
        }
        measureChild(this.d, i, i2);
        setMeasuredDimension(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.g) {
            int measuredHeight = getMeasuredHeight();
            int measuredWidth = this.e.getMeasuredWidth();
            int measuredHeight2 = this.e.getMeasuredHeight();
            this.e.layout(0, 0, measuredWidth, measuredHeight2);
            this.d.layout(0, measuredHeight2, this.d.getMeasuredWidth(), measuredHeight);
            if (this.c != null) {
                this.c.layout(0, measuredHeight2, measuredWidth, this.b + measuredHeight2);
                return;
            }
            return;
        }
        this.d.layout(0, 0, this.d.getMeasuredWidth(), this.d.getMeasuredHeight());
    }

    public void a() {
        if (this.c != null) {
            this.c.setVisibility(8);
        } else if (VERSION.SDK_INT >= 21) {
            b();
        }
    }

    @TargetApi(21)
    private void b() {
        this.e.setElevation(0.0f);
    }
}
