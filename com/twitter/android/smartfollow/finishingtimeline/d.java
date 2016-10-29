package com.twitter.android.smartfollow.finishingtimeline;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ c a;

    d(c cVar) {
        this.a = cVar;
    }

    public void run() {
        a aVar = (a) this.a.a.get();
        if (aVar != null) {
            aVar.k = true;
            aVar.v();
        }
    }
}
