package com.twitter.android.media.imageeditor;

import android.animation.Animator;

/* compiled from: Twttr */
final class d extends com.twitter.util.ui.d {
    final /* synthetic */ EditImageFragment a;

    d(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void onAnimationEnd(Animator animator) {
        if (this.a.c == 1) {
            this.a.a(true, true);
        }
    }
}
