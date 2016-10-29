package com.twitter.android.moments.data;

import com.twitter.util.collection.ImmutableCollection;
import com.twitter.util.collection.ImmutableSet;
import com.twitter.util.collection.ar;
import com.twitter.util.object.ObjectUtils;
import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import rx.o;
import rx.subjects.e;
import rx.subjects.k;

/* compiled from: Twttr */
public class av<K, V> implements Map<K, V> {
    private final Map<K, V> a;
    private final k<Entry<K, V>, Entry<K, V>> b;
    private final V c;

    public av(V v) {
        this.a = new HashMap();
        this.b = e.q();
        this.c = v;
    }

    public o<V> a(K k) {
        return this.b.d(new ax(this, k)).g(new aw(this)).d(com.twitter.util.object.e.b(this.a.get(k), this.c));
    }

    public void clear() {
        Set<Object> a = ar.a(this.a.keySet());
        this.a.clear();
        for (Object simpleImmutableEntry : a) {
            this.b.b_(new SimpleImmutableEntry(simpleImmutableEntry, this.c));
        }
    }

    public boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return this.a.containsValue(obj);
    }

    public Set<Entry<K, V>> entrySet() {
        return ImmutableSet.a(this.a.entrySet());
    }

    public V get(Object obj) {
        return this.a.get(obj);
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    public Set<K> keySet() {
        return ImmutableSet.a(this.a.keySet());
    }

    public V put(K k, V v) {
        V put = this.a.put(k, v);
        if (!ObjectUtils.a(put, v)) {
            this.b.b_(new SimpleImmutableEntry(k, v));
        }
        return put;
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public V remove(Object obj) {
        if (!this.a.containsKey(obj)) {
            return null;
        }
        V remove = this.a.remove(obj);
        this.b.b_(new SimpleImmutableEntry(obj, this.c));
        return remove;
    }

    public int size() {
        return this.a.size();
    }

    public Collection<V> values() {
        return ImmutableCollection.a(this.a.values());
    }
}
