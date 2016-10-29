package com.twitter.util.collection;

import java.util.Iterator;

/* compiled from: Twttr */
class af implements Iterable<K> {
    final /* synthetic */ ReferenceMap a;

    af(ReferenceMap referenceMap) {
        this.a = referenceMap;
    }

    public Iterator<K> iterator() {
        return new ag(this);
    }
}
