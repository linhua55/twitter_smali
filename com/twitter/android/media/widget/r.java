package com.twitter.android.media.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

/* compiled from: Twttr */
class r implements OnTouchListener {
    final /* synthetic */ FilterFilmstripView a;

    r(FilterFilmstripView filterFilmstripView) {
        this.a = filterFilmstripView;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        this.a.getParent().requestDisallowInterceptTouchEvent(true);
        return true;
    }
}
