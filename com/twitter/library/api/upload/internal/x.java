package com.twitter.library.api.upload.internal;

import java.util.TimerTask;

/* compiled from: Twttr */
class x extends TimerTask {
    final /* synthetic */ w a;

    x(w wVar) {
        this.a = wVar;
    }

    public void run() {
        this.a.c = true;
        this.a.L();
    }
}
