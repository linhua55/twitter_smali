package com.twitter.util.concurrent;

import java.util.concurrent.Future;

/* compiled from: Twttr */
public interface j<V> extends Future<V> {
    j<V> a(e<Void> eVar);

    j<V> b(e<V> eVar);

    j<V> c(e<Exception> eVar);

    j<V> d(e<Void> eVar);
}
