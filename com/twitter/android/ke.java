package com.twitter.android;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class ke implements OnTouchListener {
    final /* synthetic */ MediaTagFragment a;

    ke(MediaTagFragment mediaTagFragment) {
        this.a = mediaTagFragment;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        MediaTagFragment.a(this.a, -1);
        return false;
    }
}
