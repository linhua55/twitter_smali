package com.twitter.android.moments.ui.guide;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* compiled from: Twttr */
class c implements OnScrollListener {
    private final Set<OnScrollListener> a;

    private c() {
        this.a = new CopyOnWriteArraySet();
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        for (OnScrollListener onScrollStateChanged : this.a) {
            onScrollStateChanged.onScrollStateChanged(absListView, i);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        for (OnScrollListener onScroll : this.a) {
            onScroll.onScroll(absListView, i, i2, i3);
        }
    }
}
