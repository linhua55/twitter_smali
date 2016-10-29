package com.twitter.android.nativecards;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable.ShaderFactory;
import android.view.ViewGroup;
import com.twitter.android.nativecards.ConsumerPollCard.Configuration;

/* compiled from: Twttr */
public class o {
    static final int a;
    static final int b;
    static final int[] c;

    static {
        a = Color.argb(7, 0, 0, 0);
        b = Color.argb(178, 0, 0, 0);
        c = new int[]{a, a, b, b};
    }

    public Drawable a(Configuration configuration, ViewGroup viewGroup, int i) {
        ShaderFactory pVar = new p(viewGroup, configuration.choiceCount);
        Drawable paintDrawable = new PaintDrawable();
        paintDrawable.setCornerRadius((float) i);
        paintDrawable.setShaderFactory(pVar);
        return paintDrawable;
    }
}
