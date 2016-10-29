package com.twitter.android.profiles;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
class h implements OnPreDrawListener {
    final /* synthetic */ ViewTreeObserver a;
    final /* synthetic */ g b;

    h(g gVar, ViewTreeObserver viewTreeObserver) {
        this.b = gVar;
        this.a = viewTreeObserver;
    }

    public boolean onPreDraw() {
        ViewTreeObserver viewTreeObserver;
        if (this.a == null || !this.a.isAlive()) {
            viewTreeObserver = g.a(this.b).getViewTreeObserver();
        } else {
            viewTreeObserver = this.a;
        }
        viewTreeObserver.removeOnPreDrawListener(this);
        g.a(this.b, true, false);
        return false;
    }
}
