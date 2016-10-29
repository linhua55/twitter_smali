package com.twitter.android.media.stickers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class g extends AnimatorListenerAdapter {
    final /* synthetic */ StickerSheenView a;

    g(StickerSheenView stickerSheenView) {
        this.a = stickerSheenView;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setHasTransientState(true);
    }

    public void onAnimationEnd(Animator animator) {
        this.a.setHasTransientState(false);
        this.a.b();
    }
}
