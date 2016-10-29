package com.twitter.android;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class ay implements Callable<Void> {
    final /* synthetic */ av a;

    ay(av avVar) {
        this.a = avVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        av.a(this.a);
        return null;
    }
}
