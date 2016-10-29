package com.twitter.android.moments.ui.video;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class a extends AnimatorListenerAdapter {
    final /* synthetic */ boolean a;
    final /* synthetic */ MomentsVideoPlayerChromeView b;

    a(MomentsVideoPlayerChromeView momentsVideoPlayerChromeView, boolean z) {
        this.b = momentsVideoPlayerChromeView;
        this.a = z;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.a) {
            this.b.setVisibility(4);
        }
        this.b.o = false;
    }
}
