package com.twitter.media.util;

import java.io.File;

/* compiled from: Twttr */
class n implements Runnable {
    final /* synthetic */ p a;
    final /* synthetic */ String b;
    final /* synthetic */ m c;

    n(m mVar, p pVar, String str) {
        this.c = mVar;
        this.a = pVar;
        this.b = str;
    }

    public void run() {
        this.a.a(new File(this.b));
    }
}
