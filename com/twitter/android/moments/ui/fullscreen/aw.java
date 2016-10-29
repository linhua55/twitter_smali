package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

/* compiled from: Twttr */
class aw implements OnLayoutChangeListener {
    final /* synthetic */ as a;

    aw(as asVar) {
        this.a = asVar;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.a.t != null) {
            this.a.t.a();
        }
        this.a.c.removeOnLayoutChangeListener(this);
    }
}
