package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import bct;
import bdd;

/* compiled from: Twttr */
public class ViewPagerScrollBar extends View {
    private final int a;
    private final Drawable b;
    private int c;
    private int d;
    private int e;

    public ViewPagerScrollBar(Context context) {
        this(context, null, bct.viewPagerScrollBarStyle);
    }

    public ViewPagerScrollBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.viewPagerScrollBarStyle);
    }

    public ViewPagerScrollBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.ViewPagerScrollBar, i, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(bdd.ViewPagerScrollBar_tabDrawable);
        if (drawable == null) {
            this.b = new ColorDrawable(-1);
        } else {
            this.b = drawable;
        }
        this.a = obtainStyledAttributes.getDimensionPixelSize(bdd.ViewPagerScrollBar_tabMaxHeight, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        a();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.b.draw(canvas);
    }

    public void a() {
        int min;
        int ceil = (int) Math.ceil((double) (getWidth() / this.d));
        int ceil2 = ((int) Math.ceil((double) (this.c * ceil))) + this.e;
        if (this.a > 0) {
            min = Math.min(this.a, getHeight());
        } else {
            min = getHeight();
        }
        this.b.setBounds(ceil2, 0, ceil + ceil2, min);
    }

    public void setPosition(int i) {
        this.c = i;
        this.e = 0;
        a();
        invalidate();
    }

    public void setRange(int i) {
        this.d = i;
        requestLayout();
        invalidate();
    }

    public void a(int i, int i2) {
        this.c = i;
        this.e = i2 / this.d;
        a();
        invalidate();
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.c = savedState.a;
        this.d = savedState.b;
        this.e = 0;
        a();
        requestLayout();
        invalidate();
    }

    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.a = this.c;
        savedState.b = this.d;
        return savedState;
    }
}
