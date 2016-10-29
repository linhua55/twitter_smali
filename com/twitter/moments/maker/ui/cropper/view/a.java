package com.twitter.moments.maker.ui.cropper.view;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class a implements OnScaleGestureListener {
    final /* synthetic */ CropContainerView a;

    a(CropContainerView cropContainerView) {
        this.a = cropContainerView;
    }

    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        e.a(this.a.f);
        e.a(this.a.g);
        this.a.g.a(scaleGestureDetector.getScaleFactor());
        this.a.a.f.a();
        return true;
    }

    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        e.a(r1.f);
        e.a(this.a.g);
        this.a.g.a(this.a.f);
    }
}
