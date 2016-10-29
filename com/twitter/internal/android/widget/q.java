package com.twitter.internal.android.widget;

import android.view.View;

/* compiled from: Twttr */
class q implements Runnable {
    final /* synthetic */ View a;
    final /* synthetic */ w b;
    final /* synthetic */ HorizontalListView c;

    q(HorizontalListView horizontalListView, View view, w wVar) {
        this.c = horizontalListView;
        this.a = view;
        this.b = wVar;
    }

    public void run() {
        HorizontalListView.a(this.c, -1);
        this.a.setPressed(false);
        this.c.setPressed(false);
        if (!this.c.e) {
            this.b.run();
        }
    }
}
