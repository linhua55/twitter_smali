package com.twitter.util.collection;

import java.util.Iterator;

/* compiled from: Twttr */
class ah implements Iterable<V> {
    final /* synthetic */ ReferenceMap a;

    ah(ReferenceMap referenceMap) {
        this.a = referenceMap;
    }

    public Iterator<V> iterator() {
        return new ai(this);
    }
}
