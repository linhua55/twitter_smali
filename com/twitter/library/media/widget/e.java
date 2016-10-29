package com.twitter.library.media.widget;

/* compiled from: Twttr */
class e implements Runnable {
    final /* synthetic */ AnimatedGifView a;

    e(AnimatedGifView animatedGifView) {
        this.a = animatedGifView;
    }

    public void run() {
        this.a.invalidate();
    }
}
