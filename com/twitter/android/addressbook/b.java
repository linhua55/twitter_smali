package com.twitter.android.addressbook;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void run() {
        this.a.k.getPromptButton().setEnabled(true);
    }
}
