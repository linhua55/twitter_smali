package com.twitter.util.collection;

import java.util.Iterator;
import java.util.Map.Entry;

/* compiled from: Twttr */
class ag implements Iterator<K> {
    final /* synthetic */ af a;
    private final Iterator<Entry<K, V>> b;

    ag(af afVar) {
        this.a = afVar;
        this.b = this.a.a.iterator();
    }

    public boolean hasNext() {
        return this.b.hasNext();
    }

    public K next() {
        return ((Entry) this.b.next()).getKey();
    }

    public void remove() {
        this.b.remove();
    }
}
