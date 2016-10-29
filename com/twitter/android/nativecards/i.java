package com.twitter.android.nativecards;

/* compiled from: Twttr */
class i implements Runnable {
    public boolean a;
    final /* synthetic */ CardPreviewControllerImpl b;
    private final String c;

    i(CardPreviewControllerImpl cardPreviewControllerImpl, String str) {
        this.b = cardPreviewControllerImpl;
        this.c = str;
    }

    public void run() {
        d dVar = (d) this.b.b.get();
        if (!this.a && dVar != null) {
            this.b.c(this.c);
        }
    }
}
