package com.twitter.android.nativecards.pollcompose;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable.ShaderFactory;
import android.view.ViewGroup;

/* compiled from: Twttr */
public class m {
    static final int a;
    static final int[] b;

    static {
        a = Color.argb(178, 0, 0, 0);
        b = new int[]{0, 0, a};
    }

    public Drawable a(ViewGroup viewGroup, int i, int i2) {
        ShaderFactory nVar = new n(viewGroup, i);
        Drawable paintDrawable = new PaintDrawable();
        paintDrawable.setCornerRadius((float) i2);
        paintDrawable.setShaderFactory(nVar);
        return paintDrawable;
    }
}
