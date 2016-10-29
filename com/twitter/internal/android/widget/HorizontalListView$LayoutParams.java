package com.twitter.internal.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: Twttr */
public class HorizontalListView$LayoutParams extends MarginLayoutParams {
    public boolean a;
    public int b;
    public int c;
    public boolean d;

    public HorizontalListView$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = -1;
    }

    public HorizontalListView$LayoutParams(LayoutParams layoutParams) {
        super(layoutParams);
        this.c = -1;
    }

    public HorizontalListView$LayoutParams(int i, int i2) {
        super(i, i2);
        this.c = -1;
    }
}
