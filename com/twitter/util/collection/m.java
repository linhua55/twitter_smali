package com.twitter.util.collection;

import com.twitter.util.concurrent.e;
import java.util.Set;

/* compiled from: Twttr */
public interface m<K, V> {
    V a(K k);

    V a(K k, V v);

    void a();

    void a(e<V> eVar);

    V b(K k);

    Set<K> b();
}
