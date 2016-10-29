package com.twitter.android.media.stickers;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: Twttr */
class f implements AnimatorUpdateListener {
    final /* synthetic */ StickerSheenView a;

    f(StickerSheenView stickerSheenView) {
        this.a = stickerSheenView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float max = Math.max(0.0f, Math.min(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue())) * ((float) (this.a.e.width() + this.a.j));
        if (max != this.a.m) {
            this.a.m = max;
            this.a.invalidate();
        }
    }
}
