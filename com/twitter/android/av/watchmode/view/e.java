package com.twitter.android.av.watchmode.view;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import java.lang.ref.WeakReference;

@TargetApi(11)
/* compiled from: Twttr */
public class e implements AnimatorUpdateListener {
    @VisibleForTesting
    final WeakReference<View> a;

    public e(View view) {
        this.a = new WeakReference(view);
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View view = (View) this.a.get();
        if (view != null && view.getLayoutParams() != null) {
            view.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            view.requestLayout();
        }
    }
}
