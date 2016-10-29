package com.twitter.android;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

/* compiled from: Twttr */
class z implements OnLayoutChangeListener {
    final /* synthetic */ AltTextActivity a;

    z(AltTextActivity altTextActivity) {
        this.a = altTextActivity;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i8 - i6 != i4 - i2) {
            int measuredHeight = this.a.a.getMeasuredHeight();
            this.a.b.getLayoutParams().height = measuredHeight - this.a.c.getMeasuredHeight();
            this.a.c.setMaxHeight(measuredHeight / 2);
        }
    }
}
