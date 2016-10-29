package com.twitter.android.av;

/* compiled from: Twttr */
class f implements Runnable {
    final /* synthetic */ AVCardCanvasActivity a;

    f(AVCardCanvasActivity aVCardCanvasActivity) {
        this.a = aVCardCanvasActivity;
    }

    public void run() {
        super.finish();
        this.a.overridePendingTransition(0, 0);
    }
}
