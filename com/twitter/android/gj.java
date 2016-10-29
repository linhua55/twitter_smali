package com.twitter.android;

import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
class gj implements OnPreDrawListener {
    final /* synthetic */ GalleryActivity a;

    gj(GalleryActivity galleryActivity) {
        this.a = galleryActivity;
    }

    public boolean onPreDraw() {
        this.a.E.getViewTreeObserver().removeOnPreDrawListener(this);
        this.a.E.a();
        return false;
    }
}
