package com.twitter.database.lru;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class b implements Callable<V> {
    final /* synthetic */ String a;
    final /* synthetic */ a b;

    b(a aVar, String str) {
        this.b = aVar;
        this.a = str;
    }

    public V call() {
        return this.b.a.a(this.a);
    }
}
