package com.twitter.app.common.list;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class l implements OnTouchListener {
    final /* synthetic */ k a;

    l(k kVar) {
        this.a = kVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        for (OnTouchListener onTouch : k.a(this.a)) {
            if (onTouch.onTouch(view, motionEvent)) {
                return true;
            }
        }
        return false;
    }
}
