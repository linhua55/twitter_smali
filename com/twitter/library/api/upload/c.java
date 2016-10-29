package com.twitter.library.api.upload;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class c implements Callable<Void> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        this.a.b();
        return null;
    }
}
