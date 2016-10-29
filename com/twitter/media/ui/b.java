package com.twitter.media.ui;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ AnimatingProgressBar b;

    b(AnimatingProgressBar animatingProgressBar, int i) {
        this.b = animatingProgressBar;
        this.a = i;
    }

    public void run() {
        if (AnimatingProgressBar.a(this.b) || this.a > AnimatingProgressBar.c(this.b)) {
            AnimatingProgressBar.b(this.b, AnimatingProgressBar.a(this.b, this.a, false));
        }
    }
}
