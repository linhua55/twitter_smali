package com.twitter.android.revenue;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.util.c;
import defpackage.cmc;

/* compiled from: Twttr */
public class x {
    public static void a(Context context, LinearLayout linearLayout, int i, int i2, int i3, int i4, float f, float f2) {
        linearLayout.removeAllViews();
        double round = ((double) Math.round(2.0f * f)) / 2.0d;
        int i5 = 0;
        while (((double) (i5 + 1)) <= round) {
            int i6 = i5 + 1;
            linearLayout.addView(a(context, i, i4), i5);
            i5 = i6;
        }
        if (round != ((double) ((int) round))) {
            i6 = i5 + 1;
            linearLayout.addView(a(context, i2, i4), i5);
        } else {
            i6 = i5;
        }
        while (((float) i6) < f2) {
            i5 = i6 + 1;
            linearLayout.addView(a(context, i3, i4), i6);
            i6 = i5;
        }
    }

    private static View a(Context context, int i, int i2) {
        View imageView = new ImageView(context);
        imageView.setImageResource(i);
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.rightMargin = i2;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    public static boolean a(Context context, DisplayMode displayMode) {
        return DisplayMode.b != displayMode && c.f(context);
    }

    public static void a(View view, Resources resources, float[] fArr) {
        view.setBackground(a(resources.getColor(2131886186), resources.getDimensionPixelOffset(2131689692), resources.getColor(2131886081), fArr));
    }

    public static Drawable a(Resources resources) {
        int color = resources.getColor(2131886186);
        int dimensionPixelOffset = resources.getDimensionPixelOffset(2131689692);
        int color2 = resources.getColor(2131886081);
        float dimension = resources.getDimension(2131689727);
        return a(color, dimensionPixelOffset, color2, new float[]{dimension, dimension, dimension, dimension, dimension, dimension, dimension, dimension});
    }

    public static Drawable a(int i, int i2, int i3, float[] fArr) {
        Drawable stateListDrawable = new StateListDrawable();
        Drawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(fArr);
        gradientDrawable.setColor(i);
        gradientDrawable.setStroke(i2 * 2, i3);
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable);
        gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadii(fArr);
        gradientDrawable.setColor(0);
        gradientDrawable.setStroke(i2, i3);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    public static boolean a(cmc cmc) {
        if (cmc == null || Math.abs(1.91f - cmc.a(1.0f)) >= 0.1f) {
            return false;
        }
        return true;
    }
}
