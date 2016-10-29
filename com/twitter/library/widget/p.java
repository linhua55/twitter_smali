package com.twitter.library.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import defpackage.bdd;

/* compiled from: Twttr */
class p {
    public final int a;
    public final float b;
    public final int c;
    public final int d;
    public final ColorStateList e;

    p(int i, float f, int i2, int i3, ColorStateList colorStateList) {
        this.a = i;
        this.b = f;
        this.c = i2;
        this.d = i3;
        this.e = colorStateList;
    }

    public static p a(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, bdd.InlineActionTextStyle);
        int resourceId = obtainStyledAttributes.getResourceId(bdd.InlineActionTextStyle_textBackground, 0);
        float dimension = obtainStyledAttributes.getDimension(bdd.InlineActionTextStyle_textFontSize, 0.0f);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionTextStyle_textHorizontalPadding, 0);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(bdd.InlineActionTextStyle_textVerticalPadding, 0);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(bdd.InlineActionTextStyle_textColor);
        obtainStyledAttributes.recycle();
        return new p(resourceId, dimension, dimensionPixelSize, dimensionPixelSize2, colorStateList);
    }
}
