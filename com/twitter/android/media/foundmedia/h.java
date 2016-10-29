package com.twitter.android.media.foundmedia;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

/* compiled from: Twttr */
class h implements OnScrollListener {
    final /* synthetic */ GifCategoriesFragment a;

    h(GifCategoriesFragment gifCategoriesFragment) {
        this.a = gifCategoriesFragment;
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        ((GifCategoriesActivity) this.a.getActivity()).c();
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
