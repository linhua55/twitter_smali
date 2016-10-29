package com.twitter.android.moments.ui.guide;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

/* compiled from: Twttr */
class m implements OnScrollListener {
    final /* synthetic */ j a;

    m(j jVar) {
        this.a = jVar;
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 1) {
            this.a.f.a(false);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
