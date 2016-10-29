package android.support.v7.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar.LayoutParams;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: Twttr */
public class Toolbar$LayoutParams extends LayoutParams {
    static final int CUSTOM = 0;
    static final int EXPANDED = 2;
    static final int SYSTEM = 1;
    int mViewType;

    public Toolbar$LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mViewType = CUSTOM;
    }

    public Toolbar$LayoutParams(int i, int i2) {
        super(i, i2);
        this.mViewType = CUSTOM;
        this.gravity = 8388627;
    }

    public Toolbar$LayoutParams(int i, int i2, int i3) {
        super(i, i2);
        this.mViewType = CUSTOM;
        this.gravity = i3;
    }

    public Toolbar$LayoutParams(int i) {
        this(-2, -1, i);
    }

    public Toolbar$LayoutParams(Toolbar$LayoutParams toolbar$LayoutParams) {
        super(toolbar$LayoutParams);
        this.mViewType = CUSTOM;
        this.mViewType = toolbar$LayoutParams.mViewType;
    }

    public Toolbar$LayoutParams(LayoutParams layoutParams) {
        super(layoutParams);
        this.mViewType = CUSTOM;
    }

    public Toolbar$LayoutParams(MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.mViewType = CUSTOM;
        copyMarginsFromCompat(marginLayoutParams);
    }

    public Toolbar$LayoutParams(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.mViewType = CUSTOM;
    }

    void copyMarginsFromCompat(MarginLayoutParams marginLayoutParams) {
        this.leftMargin = marginLayoutParams.leftMargin;
        this.topMargin = marginLayoutParams.topMargin;
        this.rightMargin = marginLayoutParams.rightMargin;
        this.bottomMargin = marginLayoutParams.bottomMargin;
    }
}
