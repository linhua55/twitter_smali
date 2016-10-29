package com.twitter.ui.view;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* compiled from: Twttr */
class j extends Scroller {
    private int a;

    private j(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.a = 250;
    }

    private void a(int i) {
        this.a = i;
    }

    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, this.a);
    }
}
