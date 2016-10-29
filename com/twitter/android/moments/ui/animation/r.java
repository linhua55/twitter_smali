package com.twitter.android.moments.ui.animation;

import android.support.v4.view.ViewCompat;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import cqk;
import cqm;
import crd;

/* compiled from: Twttr */
public class r implements c {
    private final Interpolator a;

    public r() {
        this.a = crd.b();
    }

    private static void a(View view, ImageView imageView, cqm cqm) {
        DisplayMetrics displayMetrics = imageView.getContext().getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i3 = cqm.a - iArr[0];
        int i4 = cqm.b - iArr[1];
        int i5 = cqm.c;
        int i6 = (i5 * i2) / i;
        if (i6 > cqm.d) {
            i4 -= Math.abs((i6 - cqm.d) / 2);
        } else {
            i6 = cqm.d;
            i5 = (i6 * i) / i2;
            if (i5 > cqm.c) {
                i3 -= Math.abs((i5 - cqm.c) / 2);
            }
        }
        float f = ((float) i5) / ((float) i);
        float f2 = ((float) i6) / ((float) i2);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setTranslationX((float) i3);
        view.setTranslationY((float) i4);
    }

    public void a(View view, ImageView imageView, View view2, cqm cqm, cqk cqk) {
        a(view, imageView, cqm);
        ViewCompat.animate(view2).withLayer().alpha(1.0f).setDuration(300).setInterpolator(this.a).start();
        ViewCompat.animate(view).withLayer().setDuration(300).scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setInterpolator(this.a).withEndAction(new s(this, cqk)).start();
    }
}
