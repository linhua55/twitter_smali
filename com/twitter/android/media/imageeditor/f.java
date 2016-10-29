package com.twitter.android.media.imageeditor;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class f extends d {
    final /* synthetic */ EditImageFragment a;

    f(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.n.setTranslationY(0.0f);
        this.a.n.setAlpha(1.0f);
        this.a.n.setVisibility(8);
    }
}
