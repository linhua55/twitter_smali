package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class go implements OnClickListener {
    final /* synthetic */ GalleryActivity a;

    go(GalleryActivity galleryActivity) {
        this.a = galleryActivity;
    }

    public void onClick(View view) {
        this.a.s();
    }
}
