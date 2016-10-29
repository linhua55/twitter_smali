package android.support.v4.view;

import android.view.ScaleGestureDetector;

/* compiled from: Twttr */
class ScaleGestureDetectorCompatKitKat {
    private ScaleGestureDetectorCompatKitKat() {
    }

    public static void setQuickScaleEnabled(Object obj, boolean z) {
        ((ScaleGestureDetector) obj).setQuickScaleEnabled(z);
    }

    public static boolean isQuickScaleEnabled(Object obj) {
        return ((ScaleGestureDetector) obj).isQuickScaleEnabled();
    }
}
