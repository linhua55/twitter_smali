package com.twitter.android;

import android.view.View.OnSystemUiVisibilityChangeListener;

/* compiled from: Twttr */
class gg implements OnSystemUiVisibilityChangeListener {
    final /* synthetic */ GalleryActivity a;

    gg(GalleryActivity galleryActivity) {
        this.a = galleryActivity;
    }

    public void onSystemUiVisibilityChange(int i) {
        if (i == 0) {
            this.a.c(true);
        }
    }
}
