package com.twitter.android.media.widget;

import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: Twttr */
class p extends Animation {
    final /* synthetic */ boolean a;
    final /* synthetic */ MarginLayoutParams b;
    final /* synthetic */ int c;
    final /* synthetic */ int d;
    final /* synthetic */ int e;
    final /* synthetic */ int f;
    final /* synthetic */ boolean g;
    final /* synthetic */ int h;
    final /* synthetic */ int i;
    final /* synthetic */ View j;
    final /* synthetic */ FilterFilmstripView k;

    p(FilterFilmstripView filterFilmstripView, boolean z, MarginLayoutParams marginLayoutParams, int i, int i2, int i3, int i4, boolean z2, int i5, int i6, View view) {
        this.k = filterFilmstripView;
        this.a = z;
        this.b = marginLayoutParams;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = z2;
        this.h = i5;
        this.i = i6;
        this.j = view;
    }

    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.a ? f : 1.0f - f;
        this.b.width = Math.round(((float) this.c) * f2);
        this.b.leftMargin = Math.round(((float) this.d) * f2);
        this.b.rightMargin = Math.round(f2 * ((float) this.e));
        if (!(this.f == 0 || this.g)) {
            this.k.scrollTo(Math.round(((float) this.h) + (((float) this.i) * f)), 0);
        }
        this.j.requestLayout();
    }

    public boolean willChangeBounds() {
        return true;
    }
}
