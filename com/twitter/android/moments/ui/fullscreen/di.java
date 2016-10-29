package com.twitter.android.moments.ui.fullscreen;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;

/* compiled from: Twttr */
class di implements OnScaleGestureListener {
    final /* synthetic */ dg a;

    di(dg dgVar) {
        this.a = dgVar;
    }

    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        this.a.a(3);
        this.a.j.a(scaleGestureDetector.getScaleFactor());
        this.a.f.a(this.a.j);
        dg.a(this.a, scaleGestureDetector.getScaleFactor() - 1.0f);
        this.a.n = this.a.p > 0.0f;
        return true;
    }

    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        if (!this.a.c()) {
            return false;
        }
        this.a.i.a();
        this.a.g.removeCallbacks(this.a.o);
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }
}
