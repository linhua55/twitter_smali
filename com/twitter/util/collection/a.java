package com.twitter.util.collection;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
public class a<K, V> implements Map<K, V> {
    private final Map<K, V> a;
    private final Map<V, K> b;

    public a() {
        this(0);
    }

    public a(int i) {
        this.a = i > 0 ? new HashMap(i) : new HashMap();
        this.b = i > 0 ? new HashMap(i) : new HashMap();
    }

    public a(Iterable<Entry<K, V>> iterable) {
        this(iterable instanceof Collection ? ((Collection) iterable).size() : 0);
        for (Entry entry : iterable) {
            this.a.put(entry.getKey(), entry.getValue());
            this.b.put(entry.getValue(), entry.getKey());
        }
    }

    public a(Map<K, V> map) {
        this(map.entrySet());
    }

    public a(Entry<K, V>[] entryArr) {
        this(MutableList.a(entryArr));
    }

    public void clear() {
        this.a.clear();
        this.b.clear();
    }

    public boolean containsKey(Object obj) {
        return this.a.containsKey(obj);
    }

    public boolean containsValue(Object obj) {
        return this.b.containsKey(obj);
    }

    public Set<Entry<K, V>> entrySet() {
        return this.a.entrySet();
    }

    public V get(Object obj) {
        return this.a.get(obj);
    }

    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    public Set<K> keySet() {
        return this.a.keySet();
    }

    public V put(K k, V v) {
        Object put = this.a.put(k, v);
        if (put != null) {
            this.b.remove(put);
        }
        this.b.put(v, k);
        return v;
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        for (Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public V remove(Object obj) {
        V remove = this.a.remove(obj);
        if (remove != null) {
            this.b.remove(remove);
        }
        return remove;
    }

    public K a(V v) {
        return this.b.get(v);
    }

    public int size() {
        return this.a.size();
    }

    public Collection<V> values() {
        return this.a.values();
    }
}
