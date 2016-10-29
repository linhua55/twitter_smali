package com.twitter.android.media.imageeditor;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class h extends d {
    final /* synthetic */ g a;

    h(g gVar) {
        this.a = gVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.a.n.setTranslationY(0.0f);
        this.a.a.n.setAlpha(1.0f);
    }
}
