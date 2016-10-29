package com.twitter.android;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import com.twitter.util.ui.a;

/* compiled from: Twttr */
class gf extends SimpleOnGestureListener {
    final /* synthetic */ xf a;
    final /* synthetic */ GalleryActivity b;

    gf(GalleryActivity galleryActivity, xf xfVar) {
        this.b = galleryActivity;
        this.a = xfVar;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        boolean z = false;
        if (this.a.c()) {
            this.a.a(false);
        } else if (!a.a()) {
            GalleryActivity galleryActivity = this.b;
            if (!this.b.b) {
                z = true;
            }
            galleryActivity.c(z);
        }
        return true;
    }
}
