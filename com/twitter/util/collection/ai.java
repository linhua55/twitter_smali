package com.twitter.util.collection;

import java.util.Iterator;
import java.util.Map.Entry;

/* compiled from: Twttr */
class ai implements Iterator<V> {
    final /* synthetic */ ah a;
    private final Iterator<Entry<K, V>> b;

    ai(ah ahVar) {
        this.a = ahVar;
        this.b = this.a.a.iterator();
    }

    public boolean hasNext() {
        return this.b.hasNext();
    }

    public V next() {
        return ((Entry) this.b.next()).getValue();
    }

    public void remove() {
        this.b.remove();
    }
}
