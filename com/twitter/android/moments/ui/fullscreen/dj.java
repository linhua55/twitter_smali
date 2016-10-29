package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import com.twitter.util.object.b;

/* compiled from: Twttr */
final class dj implements b<OnScaleGestureListener, ScaleGestureDetector> {
    final /* synthetic */ Context a;

    dj(Context context) {
        this.a = context;
    }

    public ScaleGestureDetector a(OnScaleGestureListener onScaleGestureListener) {
        return new ScaleGestureDetector(this.a, onScaleGestureListener);
    }
}
