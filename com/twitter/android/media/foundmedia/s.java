package com.twitter.android.media.foundmedia;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

/* compiled from: Twttr */
class s implements OnScrollListener {
    final /* synthetic */ GifGalleryFragment a;

    s(GifGalleryFragment gifGalleryFragment) {
        this.a = gifGalleryFragment;
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (this.a.a != null) {
            z zVar = (z) this.a.a.get();
            if (zVar != null) {
                zVar.c();
            }
        }
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }
}
