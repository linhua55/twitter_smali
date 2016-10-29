package com.twitter.android;

import android.support.v4.view.GestureDetectorCompat;
import android.support.v4.view.ViewPager;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class gh implements OnTouchListener {
    final /* synthetic */ GestureDetectorCompat a;
    final /* synthetic */ ViewPager b;
    final /* synthetic */ GalleryActivity c;

    gh(GalleryActivity galleryActivity, GestureDetectorCompat gestureDetectorCompat, ViewPager viewPager) {
        this.c = galleryActivity;
        this.a = gestureDetectorCompat;
        this.b = viewPager;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.a.onTouchEvent(motionEvent);
        return this.b.dispatchTouchEvent(motionEvent);
    }
}
