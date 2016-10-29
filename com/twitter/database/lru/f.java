package com.twitter.database.lru;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class f implements Callable<V> {
    final /* synthetic */ String a;
    final /* synthetic */ Object b;
    final /* synthetic */ long c;
    final /* synthetic */ a d;

    f(a aVar, String str, Object obj, long j) {
        this.d = aVar;
        this.a = str;
        this.b = obj;
        this.c = j;
    }

    public V call() {
        return this.d.a.a(this.a, this.b, this.c);
    }
}
