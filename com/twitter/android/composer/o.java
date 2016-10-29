package com.twitter.android.composer;

import android.animation.Animator;
import com.twitter.util.ui.d;

/* compiled from: Twttr */
class o extends d {
    final /* synthetic */ ComposerActivity a;

    o(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.l.b();
        this.a.findViewById(2131952237).setTranslationY(0.0f);
    }
}
