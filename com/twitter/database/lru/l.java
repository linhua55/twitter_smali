package com.twitter.database.lru;

import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class l<K, V> {
    ab a;
    String b;
    n<V> c;
    m<K> d;
    int e;

    public l() {
        this.a = k.g;
        this.b = TtmlNode.ANONYMOUS_REGION_ID;
    }

    public static <V> l<String, V> a() {
        return new l().a(m.a);
    }

    public l<K, V> a(ab abVar) {
        this.a = abVar;
        return this;
    }

    public l<K, V> a(String str) {
        this.b = str;
        return this;
    }

    public l<K, V> a(n<V> nVar) {
        this.c = nVar;
        return this;
    }

    public l<K, V> a(m<K> mVar) {
        this.d = mVar;
        return this;
    }

    public k<K, V> b() {
        return new k(this);
    }
}
