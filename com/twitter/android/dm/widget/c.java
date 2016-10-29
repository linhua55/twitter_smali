package com.twitter.android.dm.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class c implements OnGlobalLayoutListener {
    final /* synthetic */ boolean a;
    final /* synthetic */ DMMessageComposer b;

    c(DMMessageComposer dMMessageComposer, boolean z) {
        this.b = dMMessageComposer;
        this.a = z;
    }

    public void onGlobalLayout() {
        if (this.b.e.getViewTreeObserver() != null) {
            this.b.e.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            if (this.a) {
                this.b.u();
            } else {
                this.b.v();
            }
        }
    }
}
