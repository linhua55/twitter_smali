package com.twitter.util.collection;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class am<K, V> extends WeakReference<V> implements ak<K> {
    private final K a;

    am(K k, V v, ReferenceQueue<V> referenceQueue) {
        super(v, referenceQueue);
        this.a = k;
    }

    public K a() {
        return this.a;
    }
}
