package com.twitter.android.av.watchmode.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

/* compiled from: Twttr */
class l {
    l() {
    }

    public Animator a(View view, String str, int... iArr) {
        return ObjectAnimator.ofInt(view, str, iArr);
    }

    public Animator a(AnimatorUpdateListener animatorUpdateListener, int... iArr) {
        Animator ofInt = ValueAnimator.ofInt(iArr);
        ofInt.addUpdateListener(animatorUpdateListener);
        return ofInt;
    }

    public AnimatorSet a() {
        return new AnimatorSet();
    }
}
