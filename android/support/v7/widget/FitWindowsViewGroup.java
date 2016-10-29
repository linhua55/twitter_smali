package android.support.v7.widget;

import android.graphics.Rect;

/* compiled from: Twttr */
public interface FitWindowsViewGroup {

    /* compiled from: Twttr */
    public interface OnFitSystemWindowsListener {
        void onFitSystemWindows(Rect rect);
    }

    void setOnFitSystemWindowsListener(OnFitSystemWindowsListener onFitSystemWindowsListener);
}
