package com.twitter.android.composer;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class bl extends d {
    final /* synthetic */ ComposerScrollView a;

    bl(ComposerScrollView composerScrollView) {
        this.a = composerScrollView;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.a = true;
    }
}
