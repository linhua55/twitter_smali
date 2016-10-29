package com.twitter.util.collection;

import java.lang.ref.Reference;
import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NoSuchElementException;

/* compiled from: Twttr */
class aj implements Iterator<Entry<K, V>> {
    final /* synthetic */ ReferenceMap a;
    private final Iterator<Entry<K, Reference<V>>> b;
    private Entry<K, V> c;

    public /* synthetic */ Object next() {
        return a();
    }

    aj(ReferenceMap referenceMap) {
        this.a = referenceMap;
        this.b = this.a.a.entrySet().iterator();
        b();
    }

    public boolean hasNext() {
        return this.c != null;
    }

    public Entry<K, V> a() {
        if (this.c == null) {
            throw new NoSuchElementException();
        }
        Entry<K, V> entry = this.c;
        b();
        return entry;
    }

    public void remove() {
        this.b.remove();
    }

    private void b() {
        this.c = null;
        while (this.c == null && this.b.hasNext()) {
            Entry entry = (Entry) this.b.next();
            Object obj = ((Reference) entry.getValue()).get();
            if (obj != null) {
                this.c = new SimpleImmutableEntry(entry.getKey(), obj);
            }
        }
    }
}
