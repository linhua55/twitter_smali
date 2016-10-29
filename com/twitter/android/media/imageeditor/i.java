package com.twitter.android.media.imageeditor;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class i extends d {
    final /* synthetic */ EditImageFragment a;

    i(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.o.setTranslationY(0.0f);
        this.a.o.setAlpha(1.0f);
        this.a.o.setVisibility(8);
    }
}
