package com.twitter.android.media.imageeditor;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class k extends d {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.a.o.setTranslationY(0.0f);
        this.a.a.o.setAlpha(1.0f);
    }
}
