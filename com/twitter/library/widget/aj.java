package com.twitter.library.widget;

/* compiled from: Twttr */
class aj implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ StatusToolBar b;

    aj(StatusToolBar statusToolBar, boolean z) {
        this.b = statusToolBar;
        this.a = z;
    }

    public void run() {
        StatusToolBar.a(this.b, this.a);
    }
}
