package com.twitter.android.moments.ui.guide;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

/* compiled from: Twttr */
class q implements OnLayoutChangeListener {
    final /* synthetic */ View a;
    final /* synthetic */ p b;

    q(p pVar, View view) {
        this.b = pVar;
        this.a = view;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.a.removeOnLayoutChangeListener(this);
        int[] iArr = new int[2];
        this.a.getLocationOnScreen(iArr);
        if (this.b.a(this.a.getContext(), iArr, (i4 - i2) / 2) && this.b.i == null) {
            this.b.i = this.a;
            this.b.c();
        }
    }
}
