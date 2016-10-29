package com.twitter.android.trends;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import defpackage.bcu;

/* compiled from: Twttr */
public class a {
    public static SparseArray<Drawable> a(Context context) {
        SparseArray<Drawable> sparseArray = new SparseArray(5);
        Resources resources = context.getResources();
        Drawable drawable = resources.getDrawable(2130839948);
        Drawable drawable2 = resources.getDrawable(2130839948);
        Drawable drawable3 = resources.getDrawable(2130839949);
        Drawable drawable4 = resources.getDrawable(2130839946);
        Drawable drawable5 = resources.getDrawable(2130839947);
        int color = resources.getColor(bcu.medium_gray);
        int color2 = resources.getColor(bcu.medium_red);
        int color3 = resources.getColor(bcu.medium_green);
        drawable.mutate().setColorFilter(color, Mode.SRC_IN);
        drawable2.mutate().setColorFilter(color3, Mode.SRC_IN);
        drawable3.mutate().setColorFilter(color3, Mode.SRC_IN);
        drawable4.mutate().setColorFilter(color2, Mode.SRC_IN);
        drawable5.mutate().setColorFilter(color2, Mode.SRC_IN);
        sparseArray.put(0, drawable);
        sparseArray.put(1, drawable2);
        sparseArray.put(2, drawable3);
        sparseArray.put(3, drawable4);
        sparseArray.put(4, drawable5);
        return sparseArray;
    }
}
