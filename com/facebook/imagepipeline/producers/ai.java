package com.facebook.imagepipeline.producers;

import java.util.concurrent.Future;

/* compiled from: Twttr */
class ai extends g {
    final /* synthetic */ Future a;
    final /* synthetic */ bk b;
    final /* synthetic */ ag c;

    ai(ag agVar, Future future, bk bkVar) {
        this.c = agVar;
        this.a = future;
        this.b = bkVar;
    }

    public void a() {
        if (this.a.cancel(false)) {
            this.b.a();
        }
    }
}
