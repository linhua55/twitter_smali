package com.twitter.android;

/* compiled from: Twttr */
class st implements Runnable {
    final /* synthetic */ ss a;

    st(ss ssVar) {
        this.a = ssVar;
    }

    public void run() {
        this.a.a.getLayoutParams().height = this.a.c;
        this.a.a.setHasTransientState(false);
    }
}
