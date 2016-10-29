package com.twitter.database.lru;

import ctc;
import cyw;
import java.util.Map;
import rx.w;

/* compiled from: Twttr */
public class p<K, V> implements ac<K, V> {
    private final ac<String, V> a;
    private final m<K> b;
    private final ctc<String, K> c;
    private final ctc<K, String> d;
    private final cyw<Map<String, V>, Map<K, V>> e;

    public p(ac<String, V> acVar, m<K> mVar) {
        this.a = acVar;
        this.b = mVar;
        this.c = new q(this);
        this.d = new r(this);
        this.e = new s(this);
    }

    public w<V> a(K k) {
        return this.a.a(this.b.a((Object) k));
    }

    public w<V> a(K k, V v, long j) {
        return this.a.a(this.b.a((Object) k), v, j);
    }

    public w<Void> a() {
        return this.a.a();
    }
}
