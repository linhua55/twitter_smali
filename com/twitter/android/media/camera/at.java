package com.twitter.android.media.camera;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class at implements OnGlobalLayoutListener {
    final /* synthetic */ ViewTreeObserver a;
    final /* synthetic */ ah b;

    at(ah ahVar, ViewTreeObserver viewTreeObserver) {
        this.b = ahVar;
        this.a = viewTreeObserver;
    }

    public void onGlobalLayout() {
        this.a.removeGlobalOnLayoutListener(this);
        this.b.v.i(this.b.N.size());
    }
}
