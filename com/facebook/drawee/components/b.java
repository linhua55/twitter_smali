package com.facebook.drawee.components;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void run() {
        for (c b : this.a.b) {
            b.b();
        }
        this.a.b.clear();
    }
}
