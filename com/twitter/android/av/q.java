package com.twitter.android.av;

/* compiled from: Twttr */
class q implements Runnable {
    final /* synthetic */ AutoPlayEqualizerDrawable a;

    q(AutoPlayEqualizerDrawable autoPlayEqualizerDrawable) {
        this.a = autoPlayEqualizerDrawable;
    }

    public void run() {
        this.a.invalidateSelf();
    }
}
