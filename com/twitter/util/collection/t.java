package com.twitter.util.collection;

import java.util.Comparator;
import java.util.Map;

/* compiled from: Twttr */
class t<K, V> extends r<K, V> implements au<K> {
    private final Comparator<? super K> b;

    protected /* synthetic */ Object c() {
        return super.g();
    }

    t(Comparator<? super K> comparator) {
        this.b = comparator;
    }

    public Comparator<? super K> comparator() {
        return this.b;
    }

    protected Map<K, V> b(int i) {
        return MutableMap.a(this.b);
    }
}
