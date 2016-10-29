package com.twitter.internal.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

/* compiled from: Twttr */
public class RectLayoutParams extends MarginLayoutParams {
    public int a;
    public int b;
    public int c;
    public int d;

    public RectLayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RectLayoutParams(int i, int i2) {
        super(i, i2);
    }

    public RectLayoutParams(LayoutParams layoutParams) {
        super(layoutParams);
    }

    public void a(int i, int i2, int i3, int i4) {
        this.a = this.leftMargin + i;
        this.b = this.topMargin + i2;
        this.c = i3 - this.rightMargin;
        this.d = this.bottomMargin + i4;
    }

    public String toString() {
        return this.a + "," + this.b + "-" + this.c + "," + this.d;
    }
}
