package com.twitter.media.ui;

/* compiled from: Twttr */
class a implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ AnimatingProgressBar b;

    a(AnimatingProgressBar animatingProgressBar, int i) {
        this.b = animatingProgressBar;
        this.a = i;
    }

    public void run() {
        if (AnimatingProgressBar.a(this.b) || this.a > AnimatingProgressBar.b(this.b)) {
            AnimatingProgressBar.a(this.b, AnimatingProgressBar.a(this.b, this.a, true));
        }
    }
}
