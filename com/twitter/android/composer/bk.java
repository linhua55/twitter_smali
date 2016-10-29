package com.twitter.android.composer;

import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
class bk implements OnPreDrawListener {
    final /* synthetic */ View a;
    final /* synthetic */ ComposerScrollView b;

    bk(ComposerScrollView composerScrollView, View view) {
        this.b = composerScrollView;
        this.a = view;
    }

    public boolean onPreDraw() {
        if (this.b.a) {
            int measuredHeight = this.a.getVisibility() == 0 ? this.a.getMeasuredHeight() : 0;
            if (this.b.getScrollY() < measuredHeight) {
                this.b.setScrollY(measuredHeight);
            }
        }
        return true;
    }
}
