package com.twitter.android.media.stickers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* compiled from: Twttr */
class b extends AnimatorListenerAdapter {
    final /* synthetic */ StickerMediaImageView a;

    b(StickerMediaImageView stickerMediaImageView) {
        this.a = stickerMediaImageView;
    }

    public void onAnimationStart(Animator animator) {
        this.a.setVisibility(0);
    }
}
