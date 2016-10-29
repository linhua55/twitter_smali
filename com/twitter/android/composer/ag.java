package com.twitter.android.composer;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class ag implements OnGlobalLayoutListener {
    final /* synthetic */ View a;
    final /* synthetic */ Rect b;
    final /* synthetic */ int c;
    final /* synthetic */ ComposerActivity d;

    ag(ComposerActivity composerActivity, View view, Rect rect, int i) {
        this.d = composerActivity;
        this.a = view;
        this.b = rect;
        this.c = i;
    }

    public void onGlobalLayout() {
        if (this.d.E.getVisibility() == 8) {
            this.a.setTouchDelegate(null);
            this.d.E.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            return;
        }
        this.d.E.getHitRect(this.b);
        this.b.inset(-this.c, -this.c);
        this.a.setTouchDelegate(new TouchDelegate(this.b, this.d.E));
    }
}
