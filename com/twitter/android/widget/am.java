package com.twitter.android.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class am extends AnimatorListenerAdapter {
    final /* synthetic */ DraggableHeaderLayout a;

    am(DraggableHeaderLayout draggableHeaderLayout) {
        this.a = draggableHeaderLayout;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.r = false;
    }
}
