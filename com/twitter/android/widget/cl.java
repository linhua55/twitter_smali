package com.twitter.android.widget;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class cl extends d {
    final /* synthetic */ MediaStoreItemView a;

    cl(MediaStoreItemView mediaStoreItemView) {
        this.a = mediaStoreItemView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.o.setVisibility(8);
    }
}
