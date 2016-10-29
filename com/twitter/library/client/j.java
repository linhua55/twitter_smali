package com.twitter.library.client;

/* compiled from: Twttr */
class j implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ h b;

    j(h hVar, boolean z) {
        this.b = hVar;
        this.a = z;
    }

    public void run() {
        this.b.a.setChecked(this.a);
    }
}
