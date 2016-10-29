package com.twitter.util.collection;

import java.util.Collection;

/* compiled from: Twttr */
public interface d<T, C extends Collection<T>> extends Iterable<T> {
    d<T, C> a(T t);

    C a();
}
