package com.twitter.util.collection;

import android.support.v4.util.LruCache;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class e<K, V> implements m<K, V> {
    protected final LruCache<K, V> a;
    protected final ReferenceMap<K, V> b;
    private final i<? super V> c;

    public e(int i, i<? super V> iVar) {
        this.b = ReferenceMap.b();
        this.c = iVar;
        if (i <= 0) {
            i = 1;
        }
        this.a = new f(this, i);
    }

    public void a(h<K> hVar) {
        this.b.a(hVar);
    }

    public V a(K k) {
        if (k == null) {
            return null;
        }
        V v;
        synchronized (this) {
            v = this.a.get(k);
            if (v == null) {
                v = this.b.b(k);
                if (v != null) {
                    this.a.put(k, v);
                }
            }
        }
        return v;
    }

    public V a(K k, V v) {
        if (k == null || v == null) {
            return null;
        }
        synchronized (this) {
            V a;
            if (c(v) > this.a.maxSize()) {
                a = this.b.a(k, v);
                if (a == null) {
                    a = this.a.remove(k);
                }
                return a;
            }
            a = this.a.put(k, v);
            if (a == null && this.a.size() != 0) {
                a = this.b.b(k);
            }
            return a;
        }
    }

    public V b(K k) {
        if (k == null) {
            return null;
        }
        V remove;
        synchronized (this) {
            remove = this.a.remove(k);
            if (remove == null) {
                remove = this.b.b(k);
            }
        }
        return remove;
    }

    public synchronized void a() {
        this.a.evictAll();
        this.b.c();
    }

    public Set<K> b() {
        Collection keySet = this.a.snapshot().keySet();
        Set<K> hashSet = new HashSet(keySet.size() + this.b.d());
        hashSet.addAll(keySet);
        for (Object add : this.b.g()) {
            hashSet.add(add);
        }
        return hashSet;
    }

    public Collection<V> c() {
        Collection values = this.a.snapshot().values();
        Collection arrayList = new ArrayList(values.size() + this.b.d());
        arrayList.addAll(values);
        for (Object add : this.b.h()) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public void a(com.twitter.util.concurrent.e<V> eVar) {
        this.a.snapshot().values();
        for (Object a : this.a.snapshot().values()) {
            eVar.a(a);
        }
        for (Object a2 : this.b.h()) {
            eVar.a(a2);
        }
    }

    protected int c(V v) {
        if (v != null) {
            return this.c != null ? this.c.a(v) : 1;
        } else {
            return 0;
        }
    }
}
