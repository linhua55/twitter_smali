package com.twitter.android.twitterflows;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
final class g implements OnPreDrawListener {
    final /* synthetic */ ViewTreeObserver a;
    final /* synthetic */ h b;
    final /* synthetic */ View c;

    g(ViewTreeObserver viewTreeObserver, h hVar, View view) {
        this.a = viewTreeObserver;
        this.b = hVar;
        this.c = view;
    }

    public boolean onPreDraw() {
        if (this.a.isAlive()) {
            this.a.removeOnPreDrawListener(this);
        }
        this.b.a(this.c, this.c.getWidth(), this.c.getHeight());
        return true;
    }
}
