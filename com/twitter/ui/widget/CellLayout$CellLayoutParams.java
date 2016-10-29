package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import defpackage.cse;

/* compiled from: Twttr */
public class CellLayout$CellLayoutParams extends MarginLayoutParams {
    private final Rect a;
    private int b;
    private boolean c;

    public CellLayout$CellLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Rect();
        this.c = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.CellLayout_Layout);
        this.b = obtainStyledAttributes.getInt(cse.CellLayout_Layout_android_layout_gravity, 0);
        obtainStyledAttributes.recycle();
    }

    public CellLayout$CellLayoutParams(int i, int i2) {
        super(i, i2);
        this.a = new Rect();
        this.c = true;
    }

    public CellLayout$CellLayoutParams(LayoutParams layoutParams) {
        super(layoutParams);
        this.a = new Rect();
        this.c = true;
    }

    public boolean a() {
        return (this.b & 8388613) == 8388613;
    }

    public Rect b() {
        return this.a;
    }

    public void a(boolean z) {
        this.c = z;
    }

    public boolean c() {
        return this.c;
    }

    public static CellLayout$CellLayoutParams a(View view) {
        return (CellLayout$CellLayoutParams) view.getLayoutParams();
    }

    public static Rect b(View view) {
        return a(view).b();
    }
}
