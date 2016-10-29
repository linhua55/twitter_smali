package com.twitter.util.collection;

import java.util.Comparator;
import java.util.Set;

/* compiled from: Twttr */
class v<T, K> extends u<T> implements au<K> {
    private final Comparator<? super K> a;

    v(Set<T> set, Comparator<? super K> comparator) {
        super(set);
        this.a = comparator;
    }

    public Comparator<? super K> comparator() {
        return this.a;
    }
}
