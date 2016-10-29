package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;

/* compiled from: Twttr */
final class u extends AbstractSet<K> {
    final /* synthetic */ LinkedTreeMap a;

    u(LinkedTreeMap linkedTreeMap) {
        this.a = linkedTreeMap;
    }

    public int size() {
        return this.a.size;
    }

    public Iterator<K> iterator() {
        return new v(this);
    }

    public boolean contains(Object obj) {
        return this.a.containsKey(obj);
    }

    public boolean remove(Object obj) {
        return this.a.b(obj) != null;
    }

    public void clear() {
        this.a.clear();
    }
}
