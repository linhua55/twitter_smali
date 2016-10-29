package android.support.design.widget;

import android.os.Build.VERSION;
import android.view.View;

/* compiled from: Twttr */
class ViewUtils {
    static final Creator DEFAULT_ANIMATOR_CREATOR;
    private static final ViewUtilsImpl IMPL;

    /* compiled from: Twttr */
    interface ViewUtilsImpl {
        void setBoundsViewOutlineProvider(View view);
    }

    /* compiled from: Twttr */
    class ViewUtilsImplBase implements ViewUtilsImpl {
        private ViewUtilsImplBase() {
        }

        public void setBoundsViewOutlineProvider(View view) {
        }
    }

    /* compiled from: Twttr */
    class ViewUtilsImplLollipop implements ViewUtilsImpl {
        private ViewUtilsImplLollipop() {
        }

        public void setBoundsViewOutlineProvider(View view) {
            ViewUtilsLollipop.setBoundsViewOutlineProvider(view);
        }
    }

    ViewUtils() {
    }

    static {
        DEFAULT_ANIMATOR_CREATOR = new Creator() {
            public ValueAnimatorCompat createAnimator() {
                return new ValueAnimatorCompat(VERSION.SDK_INT >= 12 ? new ValueAnimatorCompatImplHoneycombMr1() : new ValueAnimatorCompatImplEclairMr1());
            }
        };
        if (VERSION.SDK_INT >= 21) {
            IMPL = new ViewUtilsImplLollipop();
        } else {
            IMPL = new ViewUtilsImplBase();
        }
    }

    static void setBoundsViewOutlineProvider(View view) {
        IMPL.setBoundsViewOutlineProvider(view);
    }

    static ValueAnimatorCompat createAnimator() {
        return DEFAULT_ANIMATOR_CREATOR.createAnimator();
    }
}
