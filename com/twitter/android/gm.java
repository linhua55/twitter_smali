package com.twitter.android;

import crs;

/* compiled from: Twttr */
class gm implements Runnable {
    final /* synthetic */ GalleryActivity a;

    gm(GalleryActivity galleryActivity) {
        this.a = galleryActivity;
    }

    public void run() {
        this.a.E.setAlpha(1.0f);
        this.a.E.setLayerType(0, null);
        crs.a(this.a.r);
        crs.b(this.a.X());
    }
}
