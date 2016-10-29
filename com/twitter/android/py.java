package com.twitter.android;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

/* compiled from: Twttr */
class py implements OnScrollListener {
    final /* synthetic */ SelectionFragment a;

    py(SelectionFragment selectionFragment) {
        this.a = selectionFragment;
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (SelectionFragment.a(this.a) != null) {
            SelectionFragment.a(this.a).onScrollStateChanged(absListView, i);
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (SelectionFragment.a(this.a) != null) {
            SelectionFragment.a(this.a).onScroll(absListView, i, i2, i3);
        }
    }
}
