package com.google.gson.internal;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

/* compiled from: Twttr */
class s extends AbstractSet<Entry<K, V>> {
    final /* synthetic */ LinkedTreeMap a;

    s(LinkedTreeMap linkedTreeMap) {
        this.a = linkedTreeMap;
    }

    public int size() {
        return this.a.size;
    }

    public Iterator<Entry<K, V>> iterator() {
        return new t(this);
    }

    public boolean contains(Object obj) {
        return (obj instanceof Entry) && this.a.a((Entry) obj) != null;
    }

    public boolean remove(Object obj) {
        if (!(obj instanceof Entry)) {
            return false;
        }
        x a = this.a.a((Entry) obj);
        if (a == null) {
            return false;
        }
        this.a.a(a, true);
        return true;
    }

    public void clear() {
        this.a.clear();
    }
}
