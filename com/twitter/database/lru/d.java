package com.twitter.database.lru;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class d implements Callable<Void> {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() {
        this.a.a.a();
        return null;
    }
}
