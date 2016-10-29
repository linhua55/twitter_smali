package android.support.v4.view;

import android.os.Build.VERSION;

/* compiled from: Twttr */
public final class ScaleGestureDetectorCompat {
    static final ScaleGestureDetectorImpl IMPL;

    /* compiled from: Twttr */
    interface ScaleGestureDetectorImpl {
        boolean isQuickScaleEnabled(Object obj);

        void setQuickScaleEnabled(Object obj, boolean z);
    }

    /* compiled from: Twttr */
    class BaseScaleGestureDetectorImpl implements ScaleGestureDetectorImpl {
        private BaseScaleGestureDetectorImpl() {
        }

        public void setQuickScaleEnabled(Object obj, boolean z) {
        }

        public boolean isQuickScaleEnabled(Object obj) {
            return false;
        }
    }

    /* compiled from: Twttr */
    class ScaleGestureDetectorCompatKitKatImpl implements ScaleGestureDetectorImpl {
        private ScaleGestureDetectorCompatKitKatImpl() {
        }

        public void setQuickScaleEnabled(Object obj, boolean z) {
            ScaleGestureDetectorCompatKitKat.setQuickScaleEnabled(obj, z);
        }

        public boolean isQuickScaleEnabled(Object obj) {
            return ScaleGestureDetectorCompatKitKat.isQuickScaleEnabled(obj);
        }
    }

    static {
        if (VERSION.SDK_INT >= 19) {
            IMPL = new ScaleGestureDetectorCompatKitKatImpl();
        } else {
            IMPL = new BaseScaleGestureDetectorImpl();
        }
    }

    private ScaleGestureDetectorCompat() {
    }

    public static void setQuickScaleEnabled(Object obj, boolean z) {
        IMPL.setQuickScaleEnabled(obj, z);
    }

    public static boolean isQuickScaleEnabled(Object obj) {
        return IMPL.isQuickScaleEnabled(obj);
    }
}
