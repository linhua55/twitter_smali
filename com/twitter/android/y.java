package com.twitter.android;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class y implements OnGlobalLayoutListener {
    final /* synthetic */ AltTextActivity a;

    y(AltTextActivity altTextActivity) {
        this.a = altTextActivity;
    }

    public void onGlobalLayout() {
        this.a.c.bringPointIntoView(this.a.c.getSelectionStart());
    }
}
