package com.twitter.util.collection;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;

/* compiled from: Twttr */
class al<K, V> extends SoftReference<V> implements ak<K> {
    private final K a;

    al(K k, V v, ReferenceQueue<V> referenceQueue) {
        super(v, referenceQueue);
        this.a = k;
    }

    public K a() {
        return this.a;
    }
}
